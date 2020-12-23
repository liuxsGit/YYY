<%@ page import="java.util.List" %>
<%@ page import="vo.repairTable" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 21112
  Date: 2020/12/22
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
    

    <div class="container">
        <table class="table table-striped">
            <caption class="text-center">维修表单</caption>
            <thead>
                <tr>
                    <th>报修编号</th>
                    <th>报修类型</th>
                    <th>房间编号</th>
                    <th>报修项目</th>
                    <th>报修者身份证号</th>
                    <th>登报日期</th>
                    <th>状态</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${repairList}" var="list">
                    <tr>
                        <td>${list.getRepairID()}</td>
                        <td>${list.getRepairType()}</td>
                        <td>${list.getRoomID()}</td>
                        <td>${list.getRepairItem()}</td>
                        <td>${list.getRepair_userID()}</td>
                        <td>${list.getRepairDate()}</td>
                        <td>${list.getState()}</td>
                    </tr>
                </c:forEach>
            
            </tbody>
        </table>
        
    </div>
   
</body>
</html>
