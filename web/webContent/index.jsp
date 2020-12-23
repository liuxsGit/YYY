<%--
  Created by IntelliJ IDEA.
  User: 21112
  Date: 2020/12/21
  Time: 22:29
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
        <div class="form-row">
            <form action="../Add" method="post">
                <div class="form-group">
                    <label for="repairID">报修编号</label>
                    <input type="text" class="form-control" id="repairID" placeholder="报修编号" name="repairID">
                </div>
                <div class="form-group">
                    <label>报修类型:</label>
                    <div class="form-check form-check-inline ml-1">
                        <input type="radio" class="form-check-input" id="type1" name="typesetter" value="1">
                        <label for="type1" class="form-check-label">1:用户报修店铺</label>
                    </div>
                    <div class="form-check form-check-inline ml-1">
                        <input type="radio" class="form-check-input" id="type2" name="typesetter" value="2">
                        <label for="type2" class="form-check-label">2:员工报修店铺</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="roomID">房间编号</label>
                    <input type="text" class="form-control" id="roomID" placeholder="房间编号" name="roomID">
                </div>
                <div class="form-group">
                    <label for="repairItem">报修项目</label>
                    <input type="text" class="form-control" id="repairItem" placeholder="报修内容的具体描述" name="repairItem">
                </div>
                <div class="form-group">
                    <label for="repair_userID">报修者身份证号</label>
                    <input type="text" class="form-control" id="repair_userID" placeholder="18位" name="repair_userID">
                </div>
                <div class="form-group">
                    <label for="repairDate">登报日期</label>
                    <input type="text" class="form-control" id="repairDate" placeholder="2020-12-22" name="repairDate">
                </div>
                <div class="form-group">
                    <label>状态:</label>
                    <div class="form-check form-check-inline custom-radio ml-3">
                        <input type="radio" class="form-check-input" id="state1" name="state" value="1">
                        <label for="state1" class="form-check-label">1:已解决</label>
                    </div>
                    <div class="form-check form-check-inline ml-3">
                        <input type="radio" class="form-check-input" id="state2" name="state" value="2">
                        <label for="state2" class="form-check-label">2:未解决</label>
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" class="form-control" value="提交">
                </div>
                
            </form>
            <form action="../query" method="post">
                <div class="form-group">
                    <input type="submit" class="form-control" value="查询已有">
                </div>
            </form>
        </div>
        
    
    </div>
</body>
</html>
