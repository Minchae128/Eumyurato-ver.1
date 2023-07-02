package com.e114.e114_eumyuratodemo1.dao;

import com.e114.e114_eumyuratodemo1.dto.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MapDAO {
    List<SmallConcertDTO> viewSmallConcert();

    List<BuskingDTO> viewBusking();

    List<LocalFestivalDTO> viewLocalFestival();

    SchedulesDTO selectConcertTime(int id, String conDate);

    List<String> selectBooked(int conId, String conDate);

    List<String> selectBookedTemp(int conId, String conDate);

    int insertSeat(Map<String, Object> map);

    int insertSeatTemp(Map<String, Object> map);

    int deleteSeat(Map<String, Object> map);

    int deleteSeatTemp(Map<String, Object> map);

    LocalFestivalDTO selectLocal(int id);

    SmallConcertDTO selectConcert(int id);

    BuskingDTO selectBusking(int id);

    int upViewCountSmallConcert(int id);

    int upViewCountBusking(int id);

    int upViewCountLocalFestival(int id);

    int saveDonation(int price, int id);

    int saveDonationNum(int price, int id, String userId);

    int saveReservation(int sId, String cId, String conDate, int memberNum, int conPrice);

    ReservationDTO findReservId(int sId, String cId);

    int usedReserv(int sId, String cId);

    int saveTicket(int rId, String seatNum);

    List<SchedulesDTO> selectConcertTimeAll(int id);

}