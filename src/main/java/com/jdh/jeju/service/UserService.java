package com.jdh.jeju.service;

import com.jdh.jeju.dao.UserDao;
import com.jdh.jeju.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public List<User> findUser() throws Exception {
        return userDao.findAll();
    }
}
