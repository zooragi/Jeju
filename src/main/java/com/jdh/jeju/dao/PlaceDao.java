package com.jdh.jeju.dao;

import com.jdh.jeju.domain.Place;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface PlaceDao {

    void insert(Place place) throws Exception;

    void insertPhoto(HashMap<String, Object> param) throws Exception;

    void insertComment(HashMap<String, Object> param) throws Exception;

    void insertPlaceUserTheme(HashMap<String, Object> param) throws Exception;

    void delete(HashMap<String, Object> param) throws Exception;

    void deletePhoto(String id) throws Exception;

    void deleteComment(String id) throws Exception;

    List<Place> findAllByThemeNo(int themeNo) throws Exception;

    Place findByPlaceId(String id) throws Exception;

}