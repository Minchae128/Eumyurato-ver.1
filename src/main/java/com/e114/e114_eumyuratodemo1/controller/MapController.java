package com.e114.e114_eumyuratodemo1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {
    @GetMapping("/map")
    public String showMap() {
        return "html/map/map";
    }

    @GetMapping("/calender")
    public String calender() {
        return "html/pay/pay1";
    }

    @GetMapping("/table")
    public String table() {
        return "html/pay/pay2";
    }
}
