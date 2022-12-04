<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<style>
    #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #list td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #006bb3;
        color: white;
    }
</style>
<script>
    function delete_ok(id){
        var a = confirm("Really?");
        if(a) location.href='deleteok/' + id;
    }
</script>
<link type="text/css" rel="stylesheet" href="${path}/resource/css/style.css">
  <head>
    <title>Title</title>
  </head>
  <body>
  <h1>Study Note</h1>
  <table id="list" width="90%">
  <tr>
      <th>ID</th>
      <th>Title</th>
      <th>Writer</th>
      <th>Content</th>
      <th>Regdate</th>
      <th>Edit</th>
      <th>delete</th>
  </tr>

  <c:forEach items="${list}" var="u">
      <tr>
          <td>${u.seq}</td>
          <td>${u.title}</td>
          <td>${u.writer}</td>
          <td>${u.content}</td>
          <td>${u.regdate}</td>
          <td><a href="editform/${u.seq}">Edit</a></td>
          <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
      </tr>
  </c:forEach>
  </table>
  <br/><a href="add">Add New Post</a>
  </body>
</html>
