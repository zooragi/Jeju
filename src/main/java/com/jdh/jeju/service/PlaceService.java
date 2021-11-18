package com.jdh.jeju.service;

import com.jdh.jeju.dao.PlaceDao;
import com.jdh.jeju.domain.Place;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceService {

    @Autowired
    private PlaceDao placeDao;

    public List<Place> findTop10() throws Exception {
         return placeDao.findTop10();
    }
}
