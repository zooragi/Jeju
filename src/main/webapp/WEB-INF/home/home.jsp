<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="../template_head.jsp"/>
<link rel="stylesheet" href="${contextRoot}/css/home.css?ver=1">
<script defer src="${contextRoot}/javascript/home.js"></script>
<body>

<main>
    <jsp:include page="../header.jsp"/>
    <jsp:include page="../sideBar.jsp"/>
    <div class="theme-slide">
        <button class="left">
            <i class="fas fa-angle-left"></i>
        </button>
        <ul class="slide-theme-content">
            <c:forEach items="${Top10Themes}" var="theme">
                <li class="slide-theme-content-item">
                    <div class="icon">👅</div>
                    <div class="theme-title">${theme.title}</div>
                    <div class="curators">${theme.hashtags}</div>
                </li>
            </c:forEach>
        </ul>
        <button class="right">
            <i class="fas fa-angle-right"></i>
        </button>
    </div>
    <div class="search-container">
        <input type="text" name="search-bar" id="search-bar">
        <button class="search-icon">
            <i class="fas fa-search"></i>
        </button>
    </div>
    <div class="dash-board">
        <div class="hot-curators">
            <div class="title">
                <span>핫 큐레이터</span>
                <div class="sub">최근 인기있는 큐레이터</div>
            </div>
            <ul class="hot-curators-list">
                <li>
                    <div class="content">
                        <div class="icon">💀</div>
                        <div class="curator-name">제주지기</div>
                        <div class="theme-count">5개의 테마</div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">💀</div>
                        <div class="curator-name">제주지기</div>
                        <div class="theme-count">5개의 테마</div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">💀</div>
                        <div class="curator-name">제주지기</div>
                        <div class="theme-count">5개의 테마</div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">💀</div>
                        <div class="curator-name">제주지기</div>
                        <div class="theme-count">5개의 테마</div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">💀</div>
                        <div class="curator-name">제주지기</div>
                        <div class="theme-count">5개의 테마</div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">💀</div>
                        <div class="curator-name">제주지기</div>
                        <div class="theme-count">5개의 테마</div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="hot-theme">
            <div class="title">
                <span>핫 테마</span>
                <div class="sub">최근 인기있는 테마</div>
            </div>
            <ul class="hot-theme-list">
                <li>
                    <div class="content">
                        <div class="icon">🥤</div>
                        <div class="theme-content">
                            <div class="theme-title">커피가 맛나는 곳</div>
                            <div class="curators">100명의 큐레이터</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">🥤</div>
                        <div class="theme-content">
                            <div class="theme-title">커피가 맛나는 곳</div>
                            <div class="curators">100명의 큐레이터</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">🥤</div>
                        <div class="theme-content">
                            <div class="theme-title">커피가 맛나는 곳</div>
                            <div class="curators">100명의 큐레이터</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">🥤</div>
                        <div class="theme-content">
                            <div class="theme-title">커피가 맛나는 곳</div>
                            <div class="curators">100명의 큐레이터</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">🥤</div>
                        <div class="theme-content">
                            <div class="theme-title">커피가 맛나는 곳</div>
                            <div class="curators">100명의 큐레이터</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <div class="icon">🥤</div>
                        <div class="theme-content">
                            <div class="theme-title">커피가 맛나는 곳</div>
                            <div class="curators">100명의 큐레이터</div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="hot-place">
        <div class="title">
            <span>핫 지도</span>
            <div class="sub">최근 인기있는 지도</div>
        </div>
        <ul class="hot-place-list">
            <li>
                <div class="content">
                    <div class="desc">
                        <div class="name">강남 불백</div>
                        <div class="address">강남구 1004-1</div>
                    </div>
                    <div class="themes">
                        <div class="theme">🍣 불백 맛집</div>
                        <div class="theme">🥦 불백 맛집 리스트입니다</div>
                        <div class="theme">🍟 불백 맛집 하하하하</div>
                    </div>
                    <div class="info">많은 큐레이터들이 추천했어요.</div>
                </div>
            </li>
            <li>
                <div class="content">
                    <div class="desc">
                        <div class="name">강남 불백</div>
                        <div class="address">강남구 1004-1</div>
                    </div>
                    <div class="themes">
                        <div class="theme">🍣 불백 맛집</div>
                        <div class="theme">🥦 불백 맛집 리스트입니다</div>
                        <div class="theme">🍟 불백 맛집 하하하하</div>
                    </div>
                    <div class="info">많은 큐레이터들이 추천했어요.</div>
                </div>
            </li>
            <li>
                <div class="content">
                    <div class="desc">
                        <div class="name">강남 불백</div>
                        <div class="address">강남구 1004-1</div>
                    </div>
                    <div class="themes">
                        <div class="theme">🥦 불백 맛집 리스트입니다</div>
                        <div class="theme">🍟 불백 맛집 하하하하</div>
                    </div>
                    <div class="info">많은 큐레이터들이 추천했어요.</div>
                </div>
            </li>
            <li>
                <div class="content">
                    <div class="desc">
                        <div class="name">강남 불백</div>
                        <div class="address">강남구 1004-1</div>
                    </div>
                    <div class="themes">
                        <div class="theme">🍣 불백 맛집</div>
                        <div class="theme">🥦 불백 맛집 리스트입니다</div>
                    </div>
                    <div class="info">많은 큐레이터들이 추천했어요.</div>
                </div>
            </li>
        </ul>
    </div>
</main>
<footer>
    <div class="footer-link">
        <a href="#" target="_blank">facebook</a>
        <a href="#" target="_blank">instagram</a>
        <a href="#">e-mail</a>
    </div>
    <div>* SNS를 통해 업데이트 소식을 알려드립니다</div>
    <br>
    <div><a href="#">개인정보처리방침</a></div>

</footer>
</body>
</html>