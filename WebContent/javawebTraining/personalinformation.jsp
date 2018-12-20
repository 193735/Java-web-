<%@ page import="Dao.InformationDao"%>
<%@ page import="enity.Personal"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="Dao.InformationDao"%>
<%@ page import="enity.Personal"%>
    <%@ page import="Dao.AppointmentDao"%>
<%@ page import="enity.Appointment"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/main.css" type="text/css"/>
<link type="text/css" href="css/play.css" rel="stylesheet"/>
<script type="text/javascript" src="js/autoplay.js"></script>
<style>
        .tr{
             height: 52px;
            text-align: center;
        }

        .div1{
            width: 100px;
            height: 100px;

            float: left;
            margin-left: 15%;
            margin-top: 2%;
        }

        .div2{
            width: 50%;
            margin-left: 5%;
            margin-top: 20px;
            border: 1px solid #000000;
            float: left;
        }

        .div3{
            float: left;
            margin-left: 50%;
            margin-top: 3%;
        }
        .td{
            font-size: 20px;
        }

    </style>
<%
  HttpSession Session = request.getSession();
  String phone = (String)Session.getAttribute("phone");
%>
   <%
InformationDao informationDao = new InformationDao();
Personal  personal = informationDao.find(phone);
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>



    <body background="img/1111.jpg">
<div id="divhead">
    <table cellspacing="0" class="headtable">
        <tr>
            <td>
                <a href = "#">
                    <img src="http://images2.jyimg.com/msn/index_pic/jy_common_1542875303.jpeg" alt="世纪佳缘" width="200" height="60" border ="0"/>
                </a>
            </td>
            <td>
                <font face="宋体" size="15" color=" #ac1b11">
                    约会吧
                    <font/>
            </td>
          
        </tr>
    </table>
</div>
<div id="divmenu">
     <a href="Main.jsp">首页</a>
    <a href="myappointments.jsp">我的约会</a>
    <a href="publishAppointment.html">发布约会</a>
    <a href="personalinformation.jsp">个人中心</a>
</div>

<div class="div">
    <div class="div1" >
        <img src="../<%=personal.getImg()%>" style="width:150px;height: 150px;margin-top: 50px; margin-right: 500px; border: 1px solid #000;">
    </div>
    <div class="div2">
    <table >
        <tr class="tr">
            <td><font size="4" face="DFKai-sb">姓名:</font></td>
            <td width="200px">
            <%= personal.getName()%>
            </td>

            <td><font size="4" face="DFKai-sb">性别;</font></td>
            <td width="200px">
            <%=personal.getSex()%>
            </td>
           
        </tr>
        <tr class="tr">
            <td><font size="4" face="DFKai-sb">身高:</font></td>
            <td class="td">
            <%=personal.getHeight() %>
            </td>
            <td><font size="4" face="DFKai-sb">体重:</font></td>
            <td class="td">
            <%=personal.getWeight() %>
            </td>
        </tr>
        <tr class="tr">
            <td><font size="4" face="DFKai-sb">出生日期:</font></td>
            <td class="td">
            <%=personal.getBirthday() %>
            </td>
            <td><font size="4" face="DFKai-sb">手机号码:</font></td>
            <td class="td">
                <%=personal.getPhone() %>
            </td>
        </tr>
        <tr class="tr">
            <td><font size="4" face="DFKai-sb">毕业院校:</font></td>
            <td class="td">
            <%=personal.getByyx() %>
            </td>
            <td><font size="4" face="DFKai-sb">公司:</font></td>
            <td class="td">
            <%=personal.getCompany()%>
            </td>
        </tr>
        <tr class="tr">
            <td><font size="4" face="DFKai-sb">所在城市:</font></td>
            <td class="td">
            <%=personal.getCity() %>
            </td>
        </tr>
        <tr class="tr">
            <td><font size="4" face="DFKai-sb">年收入:</font></td>
            <td class="td">
            <%=personal.getMoney() %>
            </td>
        </tr>
  
    </table>
    </div>
</div>
<div class="div3"><a href= "bjgrxx.jsp" > 编辑个人信息</a></div>

</body>
</html>