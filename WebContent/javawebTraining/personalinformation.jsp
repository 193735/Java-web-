<%@ page import="Dao.InformationDao"%>
<%@ page import="enity.Personal"%>
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
            margin-left: 30%;
        }

        .div2{
            width: 80%;
            margin-right: auto;
            margin-left: auto;
            margin-top: 20px;
            border: 1px solid #000000;


        }
        #cvs {
            border: 1px solid #000;
            margin: 20px 0 20px 50px;
            float: left
        }

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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<%HttpSession Session = request.getSession();
String phone = (String)Session.getAttribute("phone");
 %>
<% 
InformationDao informationDao = new InformationDao();
Personal  personal = informationDao.find(phone);
%>
<%! 
public String print(String a){
	if(a.equals(null)&&a.equals("")){
		return "还未填写信息";
	}else{
		return a;
	}
}
%>
<body>
<div id="divhead">
    <table cellspacing="0" class="headtable">
        <tr>
            <td>
                <a href = "#">
                    <img src="http://images2.jyimg.com/msn/index_pic/jy_common_1542875303.jpeg" alt="世纪佳缘" width="200" height="60" border ="0"/>
                </a>
            </td>
            <td>
                <font face="方正舒体" size="15" color=" #ac1b11">
                    约会吧
                    <font/>

            <td style = "text-align:right">

                <a href="login.html">登录</a>
                <a href="register.html">注册</a>
            </td>
        </tr>
    </table>
</div>
<div id="divmenu">
    <a href="meHone.html">我的首页</a>
    <a href="myappointments.jsp">我的约会</a>
    <a href="publishAppointment.html">发布约会</a>
    <a href="personalinformation.jsp">个人中心</a>
    <a href="#">俱乐部</a>
    <a href="#">活动</a>
    <a href="#">晒幸福</a>
</div>

<div class="" style="width: 100%">
    <center><div class="mydiv" style="height: 800px;width: 60%">
     <img src="../<%=personal.getImg()%>" style="width:150px;height: 150px;margin-top: 50px; margin-right: 500px; border: 1px solid #000;">
        <div class="div2">
            <table >
                <tr class="tr">
                    <td><font size="4" face="DFKai-sb">姓名: </font>
                        <h1> <% out.println(print(personal.getName()));%>  </h1>
                    </td>

                    <td width="200px">
                    </td>

                    <td><font size="4" face="DFKai-sb">性别: </font>
                        <h1>  <% out.println(print(personal.getSex()));%>  </h1>
                    </td>
                    <td width="200px">
                    </td>


                </tr>

                <tr class="tr">

                    <td><font size="4" face="DFKai-sb">身高: </font>
                        <h1><% out.println(print(personal.getHeight()));%> </h1>
                    </td>


                    <td>

                    </td>

                    <td><font size="4" face="DFKai-sb">体重: </font>
                        <h1> <% out.println(print(personal.getWeight()));%>  </h1>
                    </td>

                    <td>
                    </td>
                </tr>

                <tr class="tr">
                    <td><font size="4" face="DFKai-sb">出生日期: </font>
                        <h1> <% out.println(print(personal.getBirthday()));%> </h1>
                    </td>


                    <td>

                    </td>

                    <td><font size="4" face="DFKai-sb">婚恋状况: </font>
                        <h1><% out.println(print(personal.getWeight()));%></h1>
                    </td>
                    <td>
                    </td>

                </tr>

                <tr class="tr">
                    <td><font size="4" face="DFKai-sb">手机号码:</font>
                        <h1><% out.println(print(personal.getPhone()));%> </h1>
                    </td>

                    <td>

                    </td>
                    <td><font size="4" face="DFKai-sb">工作职位：</font>
                        <h1> <% out.println(print(personal.getCompany()));%></h1>
                    </td>

                    <td>

                    </td>

                </tr>

                <tr class="tr">
                    <td><font size="4" face="DFKai-sb">所在城市：</font>
                        <h1> <% out.println(print(personal.getCity()));%></h1>
                    </td>



                    <td>

                    </td>
                    <td><font size="4" face="DFKai-sb">所学专业:</font>
                        <h1> <% out.println(print(personal.getSxzy()));%></h1>
                    </td>

                    <td>

                    </td>

                </tr>

                <tr class="tr">
                    <td><font size="4" face="DFKai-sb">年收入：</font>
                        <h1>  <% out.println(print(personal.getMoney()));%></h1>
                    </td>

                    <td>

                    </td>
                    <td><font size="4" face="DFKai-sb">电子邮箱:</font>
                        <% out.println(print(personal.getEmail()));%>
                    <td>

                    </td>
                </tr>


                <tr class="tr">
                    <td><font size="4" face="DFKai-sb">毕业院校：</font>
                        <% out.println(print(personal.getByyx()));%>
                    <td>

                    </td>
                </tr>

            </table>
            <a href="bjgrxx(1).html">编辑个人信息</a>
        </div>
    </div>


    </center>


</div>

</body>
</html>