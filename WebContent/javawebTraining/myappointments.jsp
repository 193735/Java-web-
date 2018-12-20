<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="Dao.InformationDao"%>
<%@ page import="enity.Personal"%>
    <%@ page import="Dao.AppointmentDao"%>
<%@ page import="enity.Appointment"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <link rel="stylesheet" href="css/main.css" type="text/css"/>
    <link type="text/css" href="css/play.css" rel="stylesheet"/>
    <script type="text/javascript" src="js/autoplay.js"></script>
    <title>Title</title>
  <style type="text/css">
        .mydiv{
            margin-top: 20px;
            width:250px;

            height:auto;

            border:#909090 1px solid;

            background:#fff;

            color:#333;

            filter:progid:DXImageTransform.Microsoft.Shadow(color=#909090,direction=120,strength=4);

            -moz-box-shadow: 2px 2px 10px #909090;

            -webkit-box-shadow: 2px 2px 10px #909090;

            box-shadow:2px 2px 10px #909090;
        }
    </style>
        
        
  <%
  HttpSession Session = request.getSession();
  String phone = (String)Session.getAttribute("phone");
  AppointmentDao appointmentDao = new AppointmentDao();
  ArrayList<Appointment> list = appointmentDao.find(phone);

   %>
   <%
InformationDao informationDao = new InformationDao();
Personal  personal = informationDao.find(phone);
%>
</head>
<body background="img/1111.jpg">
<div class="divmain">

    <div id="img-tit">
        <a href = "#">
            <img src="http://images2.jyimg.com/msn/index_pic/jy_common_1542875303.jpeg" alt="世纪佳缘" width="200" height="60" border ="0"/>
        </a>
    </div>

  
</div>
<br>
<div id="divmenu">
       <a href="Main.jsp">首页</a>
    <a href="myappointments.jsp">我的约会</a>
    <a href="publishAppointment.html">发布约会</a>
    <a href="personalinformation.jsp">个人中心</a>
    <a href="#">俱乐部</a>
    <a href="#">活动</a>
    <a href="#">晒幸福</a>
</div>
<br>
         <%
         	for(int i=0;i<list.size();i++){
                 Appointment yh=(Appointment)list.get(i);
         %>
      <div class="" style="width: 100%">
    <center><div class="mydiv" style="height: 120px;width: 60%">
        <div style="height:100% ;width: 20% ;background: #ffffff;float: left" >
          <img src="../<%=personal.getImg()%>" style="width:150px;height: 120px; border: 1px solid #000;">
        </div>
        <div style="float: left">
        <p class="tip"><span>主题：</span><%=yh.getTheme() %></p>
        <p  class="tip"><span>时间：</span><%=yh.getTime() %></p>
        <p   class="tip"><span>地点：</span><%=yh.getSate() %></p>
        </div>
        <div style="float: left">
            <p class="tip"><span>费用：</span><%=yh.getFee() %></p>
            <p  class="tip"><span>描述：</span><%=yh.getDescription() %></p>
            <p   class="tip"><span>手机：</span><%=yh.getPhoneNumber() %></p>
        </div>

       </div>
    </center>
         <% } %>

</body>
</html>