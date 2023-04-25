package com.e114.e114_eumyuratodemo1.controller;

import com.e114.e114_eumyuratodemo1.dto.*;
import com.e114.e114_eumyuratodemo1.jdbc.IDAO;
import com.e114.e114_eumyuratodemo1.service.MapService;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MapController {

    @Autowired
    private MapService mapService;

    @Autowired
    private DataDTO dto;

//    @GetMapping("/map")
//    public String showMap() {
//        return "html/map/map";
//    }



    @GetMapping("/map")
    public String smallConcert(){

        return "html/map/concertMap";
    }

    @GetMapping("/all")
    @ResponseBody
    public Map<String,List<?>> all() {

        Map<String,List<?>> map = new HashMap<>();

        List<SmallConcertDTO> smallConcert = mapService.viewSmallConcert();
        List<BuskingDTO> busking = mapService.viewBusking();
        List<LocalFestivalDTO> localFestival = mapService.viewLocalFestival();

        map.put("smallConcert",smallConcert);
        map.put("busking",busking);
        map.put("localFestival",localFestival);

        return map;
    }

    @GetMapping("/{type}")
    @ResponseBody
    public List<?> getData(@PathVariable String type) {
        switch (type) {
            case "smallconcert":
                List<SmallConcertDTO> smallConcertList = mapService.viewSmallConcert();
                return smallConcertList;
            case "busking":
                List<BuskingDTO> buskingList = mapService.viewBusking();
                return buskingList;
            case "localfestival":
                List<LocalFestivalDTO> localFestivalList = mapService.viewLocalFestival();
                return localFestivalList;
            default:
                return null;
        }
    }

    @GetMapping("/smallconcert/detail/{id}/json")
    @ResponseBody
    public SmallConcertDTO detailJson(@PathVariable("id") int id) {
        SmallConcertDTO dto = mapService.selectConcert(id);

        return dto;
    }

    @GetMapping("/smallconcert/detail/{id}")
    public String detail() {


        return "html/detail/detail";
    }

    @GetMapping("/smallconcert/detail/{id}/calendar")
    public String calendarPage(){
        return "html/pay/pay1";
    }

    @PostMapping("/smallconcert/detail/{id}/calendar")
    public String calendar(){
        return "html/pay/pay1";
    }


    @PostMapping("/smallconcert/detail/{id}/calendar/json")
    @ResponseBody
    public ResponseEntity<Map<String, SchedulesDTO>> calendarJson(@PathVariable("id") int id, @RequestBody Map<String, String> data){
        String selectedDate = data.get("selectedDate");
        System.out.println(selectedDate);

        Map<String, SchedulesDTO> response = new HashMap<>();
        response.put("message", mapService.selectConcertTime(id,selectedDate));
        return ResponseEntity.ok().body(response);
    }

    @GetMapping("/smallconcert/detail/{id}/calendar/{day}")
    public String seatPage(){
        return "html/pay/pay2";
    }

    @GetMapping("/smallconcert/detail/{id}/calendar/{day}/json")
    @ResponseBody
    public List<String> seat(@PathVariable("id")int id,@PathVariable("day")String day){

        System.out.println(mapService.selectBooked(id,day));
        return mapService.selectBooked(id,day);
    }

    @PostMapping ("/smallconcert/detail/{id}/calendar/{day}/pay")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> pay(@PathVariable("id")int id,@PathVariable("day")String day,@RequestBody Map<String, List<String>> data){
        List<String> selectedSeats = data.get("selectedSeats");
        int length = selectedSeats.size();

        Map<String, Object> response = new HashMap<>();
        response.put("seat", selectedSeats);
        response.put("count", length);
        response.put("concert", mapService.selectConcert(id));
        response.put("schedule", mapService.selectConcertTime(id,day));

        dto.setMyData(response);

        int result;
        try {
            mapService.insertSeat(id, day, selectedSeats);
            result = 1;
        } catch (Exception e) {
            e.printStackTrace();
            result = 0;
        }
        response.put("result", result);

        return ResponseEntity.ok().body(response);
    }

    @GetMapping("/smallconcert/detail/{id}/calendar/{day}/pay")
    public String payPage(){


        return "html/pay/pay3";
    }

    @GetMapping("/smallconcert/detail/{id}/calendar/{day}/pay/json")
    @ResponseBody
    public DataDTO payPageData(){


        return dto;
    }

    @GetMapping("/smallconcert/detail/{id}/calendar/{day}/pay/kakao")
    @ResponseBody
    public String kakaoPay(){
        try {
            return mapService.payService();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "error";
    }

    @GetMapping("/kakaopay/success")
    public String success(){
        return "html/pay/paySuccess";
    }

    @GetMapping("/kakaopay/fail")
    public String fail(){
        List<String> seat = (List<String>) (dto.getMyData().get("seat"));
        SchedulesDTO schedulesDTO = (SchedulesDTO)(dto.getMyData().get("schedule"));
        int schedulesId = schedulesDTO.getId();

        mapService.rollBackInsertSeat(schedulesId,seat);

        return "html/pay/payFail";
    }




}

