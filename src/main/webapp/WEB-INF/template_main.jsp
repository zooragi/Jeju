<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set scope="page" var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<jsp:include page="./template_head.jsp"/>
<body>

<jsp:include page="./header.jsp"/>
<jsp:include page="./sideBar.jsp"/>
<div class="container1">
    <div class="main-container">
        <jsp:include page="${contentUrl}"/>
    </div>
</div>

<jsp:include page="./footer.jsp"/>

</body>
</html>