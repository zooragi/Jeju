<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
    <div class="logo">
        <i class="fas fa-atlas"></i>
        <span class="title">진짜 제주</span>
    </div>
    <div class="logout-box">
        <c:if test="${empty loginUser}">
            <form class="login_form" action='../auth/loginform'>
                <button type="submit" class="login">로그인</button>
            </form>
        </c:if>
        <c:if test="${!empty loginUser}">
            <form class="login_form" action='../auth/logout'>
                <button type="submit" class="login">로그아웃</button>
            </form>
        </c:if>

        <button class="side-menu">
            <i class="fas fa-align-justify"></i>
        </button>
    </div>
</header>