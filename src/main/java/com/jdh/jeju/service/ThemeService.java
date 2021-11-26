package com.jdh.jeju.service;

import com.jdh.jeju.dao.ThemeDao;
import com.jdh.jeju.domain.Theme;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ThemeService {

    @Autowired
    private ThemeDao themeDao;

    public List<Theme> findThemes() throws Exception {
        return themeDao.findAll();
    }

    public List<Theme> findTop10() throws Exception {
        return themeDao.findTop10();
    }
    public List<Theme> latest10Theme() throws Exception {
        return themeDao.latest10Theme();
    }

}
