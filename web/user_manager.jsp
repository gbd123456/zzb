<%@ page import="java.util.List" %>
<%@ page import="club.finallymj.User" %>
<%@ page import="club.finallymj.ban" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% ArrayList<String> list= new ArrayList<>();
    list.add("1");
    list.add("2");
    list.add("3");
    list.add("4");
    list.add("5");
    list.add("6");
    list.add("7");
    list.add("8");
    list.add("9");
    list.add("10");
    list.add("11");
    list.add("12");
    list.add("13");
    list.add("14");
    list.add("15");
    list.add("16");
    int j;

%>
<html>
<head>
    <title>用户管理</title>
</head>
<body style="background-image: url(img/2.jpg) ">
<div>
	<jsp:include page="layout.jsp"></jsp:include>
    <div class="table_wrap">
        <table class="table" width="800" cellspacing="0" cellpadding="0">
            <thead class="table_head">
            <tr>
                <th>ID</th>
                <th>班级</th>
                <th>顺序</th>

            </tr>
            </thead>
            <tbody class="tbody">

            <%
                Object status = request.getAttribute("ban_data");
                if (status != null) {


                    List<ban> users_back  = (List<ban>) status;
                    List<ban> users = (List<ban>) status;

                    for (ban user : users) {
            %>
<%--            ban user : users--%>
            <tr>
                <td><%=user.getId() %>
                </td>
                <td><%=user.getName() %>
                </td>


                <%
                j = (int) (Math.random()*(list.size()));
                %>
                <td>
                    <%=list.get(j) %>
                    <%String delete_data = list.get(j);
                      list.remove(delete_data);
                    %>
                </td>
            </tr>

            <%
                    }
                }

            %>


            </tbody>
        </table>
    </div>
</div>
</body>
<style type="text/css">



    a {
        text-decoration: none;
        color: black;
    }

    a:hover {
        color: rgb(136, 136, 136);
    }

    .table_wrap {
        /*background-image: url("img/2.jpg");*/
        padding-top: 10px;
    }

    .table_wrap > table {
        overflow: hidden;
        font-size: 16px;
        text-align: center;
        margin: 0 auto;
        border-collapse: separate;
        border-spacing: 0;
        border: 2px #000;
    }

    table thead tr, table tbody tr {

        height: 45px;
        line-height: 45px;
        /*background-color: pink;*/
        background-color: rgb(238, 238, 238);
    }

    table tr th:first-child, table tr td:first-child { /*设置table左边边框*/
        border-left: 0px solid #eaeaea;
    }

    table tr th:last-child, table tr td:last-child { /*设置table右边边框*/
        border-right: 0px solid #eaeaea;
    }

    table tr td:first-child,
    table tr td:nth-child(2),
    table tr td:nth-child(3),
    table tr td:last-child { /*设置table表格每列底部边框*/
        border-bottom: 3px solid #eaeaea;
    }

    /*table tr:last-child td:first-child,
    table tr:last-child td:nth-child(2),
    table tr:last-child td:nth-child(3),
    table tr:last-child td:last-child{/!*设置table表格最后一列底部边框*!/
            border-bottom: 2px solid #000;
    }*/
    table tr th {
        background: rgb(222, 153, 94);
    }

    table tr:first-child th:first-child {
        border-top-left-radius: 12px;
    }

    table tr:first-child th:last-child {
        border-top-right-radius: 12px;
    }

    table tr:last-child td:first-child {
        border-bottom-left-radius: 12px;
    }

    table tr:last-child td:last-child {
        border-bottom-right-radius: 12px;
    }
</style>
</html>
