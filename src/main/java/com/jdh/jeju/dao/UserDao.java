package com.jdh.jeju.dao;

import com.jdh.jeju.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface UserDao {

    void insert(User user) throws Exception;
    void update(User user) throws Exception;
    void delete(int userNo) throws Exception;
    List<User> findAll() throws Exception;

    User findByNickname(String nickname) throws Exception;
    User findByNo(int userNo) throws Exception;

    User findByEmailAndPassword(@Param("email") String email, @Param("password") String password) throws Exception;

    List<User> findByKeyword(String keyword) throws Exception;

    void updateViewCount(int userNo) throws Exception;
    void updateReportedCount(HashMap<String,Object> params) throws Exception;
    void updateWarnedCount(HashMap<String,Object> params) throws Exception;
    void updateActive(int userNo) throws Exception;

    List<User> userRankingByViewCount() throws Exception;
    List<User> findAllReportedUser() throws Exception;

    void insertLikedUser(@Param("likedUserNo") int likedUserNo, @Param("loginUserNo") int loginUserNo) throws Exception;
    void deleteLikedUser(@Param("likedUserNo") int likedUserNo, @Param("loginUserNo") int loginUserNo) throws Exception;
    void deleteAllLikedUser(int userNo) throws Exception;
    List<User> findAllLikedUser(int loginUserNo) throws Exception;


}
