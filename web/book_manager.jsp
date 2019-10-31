<%@ page import="club.finallymj.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 12408
  Date: 2019/10/10
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理</title>
</head>
<body style="background-image: url(img/2.jpg) ">
<div>
    <jsp:include page="layout.jsp"></jsp:include>
    <div class="table_wrap">
        <table class="table" width="800" cellspacing="0" cellpadding="0">
            <thead class="table_head">
            <tr>
                <th style="width: 50px">ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Date</th>
                <th>press</th>
                <th style="width: 50px">Cid</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody class="tbody">

            <%
                Object status = request.getAttribute("book_data");
                if (status != null) {
                    List<Book> books = (List<Book>) status;
                    for (Book book : books) {
            %>

            <tr>
                <td><%=book.getId() %>
                </td>
                <td><%=book.getTitle() %>
                </td>
                <td><%=book.getAuthor() %>
                </td>
                <td><%=book.getDate() %>
                </td>
                <td><%=book.getPress() %>
                </td>
                <%--                <td><%=book.getAbs() %>--%>
                </td>
                <td><%=book.getCid() %>
                </td>
                <td>
                    <button value="<%= book.getId() %>" name="delete" formaction="" class="button">删除</button>
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

    .button{
        color: #fff;
        background-color: #ed4014;

        display: inline-block;
        margin-bottom: 0;
        font-weight: 400;
        text-align: center;
        vertical-align: middle;
        -ms-touch-action: manipulation;
        touch-action: manipulation;
        cursor: pointer;
        background-image: none;
        border: 1px solid transparent;
        white-space: nowrap;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        height: 27px;
        padding: 0 15px;
        font-size: 14px;
        border-radius: 4px;
        transition: color .2s linear,background-color .2s linear,border .2s linear,box-shadow .2s linear;
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
