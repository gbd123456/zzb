<%@ page import="java.util.List" %>
<%@ page import="club.finallymj.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 12408
  Date: 2019/9/27
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>管理系统</title>
  </head>
  <body>
  <c:forEach items="${ user_data}" var="data">
    <tr>
      <td>${ data.id}</td>
    </tr>

  </c:forEach>
<table border="1">
  <tr>
    <th width="30px">ID</th>
    <th width="50px">Name</th>
    <th width="90px">Psw</th>
  </tr>
  <%
    Object status = request.getAttribute("user_data");
    if(status != null){
      List<User> users = (List<User>) status;
      for (User user : users) {
   %>

  <tr>
    <td><%=user.getId() %></td>
    <td><%=user.getName() %></td>
    <td><%=user.getPsw() %></td>

  </tr>

  <%
      }
    }

  %>

</table>
  </body>
</html>
