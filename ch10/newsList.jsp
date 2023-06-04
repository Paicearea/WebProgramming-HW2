<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>방명록 페이지</title>
  <style>
.container {
  max-width: 500px;
  margin: auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  text-align: center;
  font-size: 14px;
  
}
table{
	width: 500px;
	margin: auto;
	border: 1px solid #d3d3d3;
	border-collapse: collapse;
	background-color: #36BC9B;
	
	 
}
tr,th{
	border: 1px solid #d3d3d3;
	border-collapse: collapse;
	background-color: #E2E2E2;
	text-align: center;
	
}
td{
	border: 1px solid #d3d3d3;
	border-collapse: collapse;
	background-color: #36BC9B;
	text-align: left;
	}

.btn {
  padding: 8px 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  background-color: #2196F3;
  color: white;
}
</style>
</head>

<body>
  <div class="container">
    <h2>방명록 목록</h2>
    <br>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th scope="col">번호</th>
          <th scope="col">작성자</th>
          <th scope="col">이메일</th>
          <th scope="col">작성일</th>
          <th scope="col">제목</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="news" items="${newslist}" varStatus="status">
          <tr>
            <td>${status.count}</td>
            <td>${news.author}</td>
            <td>${news.email}</td>
            <td>${news.date}</td>
            <td><a href="news.nhn?action=getNews&aid=${news.aid}" class="text-decoration-none">${news.title}</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <br>
    <c:if test="${error != null}">
      <div class="alert">
        에러 발생: ${error}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      </div>
    </c:if>
    <br>
    <form method="post" action="/jwbook/news.nhn?action=showNewsPut" enctype="multipart/form-data">
      <button class="btn" type="submit">등록</button>
    </form>
  </div>
</body>
</html>
