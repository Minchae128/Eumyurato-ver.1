package com.e114.e114_eumyuratodemo1.service;


import com.e114.e114_eumyuratodemo1.dto.BuskingDTO;
import com.e114.e114_eumyuratodemo1.dto.LocalFestivalDTO;
import com.e114.e114_eumyuratodemo1.dto.SmallConcertDTO;
import com.e114.e114_eumyuratodemo1.jdbc.AdminMemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    AdminMemberDAO dao;

    public List<BuskingDTO> viewAllBusking(){
        return dao.getBuskings();
    };

    public List<SmallConcertDTO> viewAllSmallConcert(){
        return dao.getSmallConcerts();
    };

    public List<LocalFestivalDTO> viewAllLocalFestival(){
        return dao.getLocalFestivals();
    };


}