<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>방명록 수정창</title>
 <style>
    .container {
      max-width: 500px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      text-align: center;
    }
    
    table {
      width: 400px;
      margin: auto;
      border: 1px solid #d3d3d3;
      border-collapse: collapse;
      table-layout: fixed;
    }
    
    tr, th {
      border: 1px solid #d3d3d3;
      border-collapse: collapse;
      text-align: center;
    }
    
    td {
      border: 1px solid #d3d3d3;
      border-collapse: collapse;
      width: 200px;
    }
    
    label {
      text-align: center;
      color: green;
    }
    
    button {
      padding: 8px 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      background-color: #2196F3;
      color: white;
    }
  </style>
  <script>
    function validateForm() {
      var author = document.forms["myForm"]["author"].value;
      var email = document.forms["myForm"]["email"].value;
      var title = document.forms["myForm"]["title"].value;
      var password = document.forms["myForm"]["password"].value;
      
      if (author == "" || email == "" || title == "" || password == "") {
        alert("입력란을 모두 채워주세요.");
        return false;
      }
    }
    function deleteForm() {
      var inputs = document.getElementsByTagName("input");
      var textarea = document.getElementsByTagName("textarea")[0];
      
      for (var i = 0; i < inputs.length; i++) {
        inputs[i].value = ""; // 각 입력란의 값을 빈 문자열로 설정하여 삭제
      }
      
      textarea.value = ""; // 텍스트 영역의 값을 빈 문자열로 설정하여 삭제
    }
  </script>
</head>
<body>
  <div class="container">
    <h2>방명록 수정</h2>
    <div class="form-group" id="addform">
      <form name="myForm" method="post" action="/jwbook/news.nhn?action=addNews" enctype="multipart/form-data" onsubmit="return validateForm()">
        <table>
          <tr>
            <td>
              <label class="form-label">작성자</label>
            </td>
            <td>
              <input type="text" name="author" class="form-control" value="${news.author}">
            </td>
          </tr>
          <tr>
            <td>
              <label class="form-label">이메일</label>
            </td>
            <td>
              <input type="text" name="email" class="form-control" value="${news.email}">
            </td>
          </tr>
          <tr>
            <td>
              <label class="form-label">제목</label>
            </td>
            <td>
              <input type="text" name="title" class="form-control" value="${news.title}">
            </td>
          </tr>
          <tr>
            <td>
              <label class="form-label">비밀번호</label>
            </td>
            <td>
              <input type="password" name="password" class="form-control">
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <label class="form-label">이미지</label>
              <input type="file" name="file" class="form-control" value="${news.img}">
            </td>
          </tr>
        </table>
        <br>
        <div>
          <label class="form-label"></label>
          <textarea cols="50" rows="5" name="content" class="form-control" value="${news.content}">
          </textarea>
        </div>
        <br>
        <button type="submit" class="btn btn-success">수정</button>
       </form>
        <button type="reset" class="btn btn-success mt-3" onclick="deleteForm()">삭제</button>
      <form method="post" action="/jwbook/news.nhn?action=listNews" enctype="multipart/form-data">
        <button type="submit" class="btn btn-list mt-3">목록</button>
      </form>
    </div>
  </div>
</body>
</html>
