<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style type="text/css">
        .con4 {
            width: 300px;
            height: 700px;
            overflow: hidden;
            margin: 20px auto;
            color: #FFFFFF;
        }

        .con4 .btn {
            width: 100%;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background: #d8b49c;
            display: block;
            font-size: 16px;
            border-radius: 5px;
        }

        .upload {
            float: left;
            position: relative;
        }

        .upload_pic {
            display: block;
            width: 100%;
            height: 40px;
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
            border-radius: 5px;
        }

        #cvs {
            border: 1px solid #000;
            margin: 20px 0 20px 50px;
        }
        .div1{
            width: 20%;
            height: 700px;
            margin-left: 20%;
            /*background-color: aquamarine;*/
            float: left;
            margin-top: 50px;
        }
        .div2{
            width: 30%;
            height: 900px;
            /*background-color: #ee87b3;*/
            float: left;
            margin-top: 50px;
        }
        body{

            width: auto;
            height: 700px;
            background-size: 100%100%;
        }
        .b {
            width: 100%;
            text-align: center;
            font-weight: bold;
            font-size: 40px;
            line-height: 80px;
            margin-top: 20px;
        }


    </style>
</head>
<body background="img/tt5.jpg">
<div>
    <div class="b">编辑信息</div>
</div>

<div class="t">
<div class="div1">
<div class="con4">
    <canvas id="cvs" width="200" height="200"></canvas>
    <span class="btn upload">上传头像<input type="file"name = "headImage" class="upload_pic" id="upload" /></span>
</div>
</div>
<div class="div2">
    <form action="/Practical/revise" method="post">
        <table border="0" cellpadding="5" cellspacing="0" align="center">
            <tr height="40" >
                <td width="100" align="right">姓名：</td>
                <td>
                    <input type="text" name="username" placeholder="请输入姓名"style="width:200px">
                </td>
            <tr height="40">
                <td width="100" align="right">性别：</td>
                <td>
                    <input type="radio" name="sex" value="男" />男
                    <input type="radio" name="sex" value="女" />女
                </td>
            </tr>
            <tr height="40" >
                <td width="10" align="right">身高：</td>
                <td>
                    <input type="text" name="height"  placeholder="请输入身高" style="width:200px">
                </td>
            </tr>
            <tr height="40">
                <td width="50" align="right">体重：</td>
                <td>
                    <input type="text" name="weight" placeholder="请输入体重"style="width:200px">
                </td>
            </tr>
            <tr height="40">
                <td width="100" align="right">生日：</td>
                <td>
                    <input type="text" name="birthday" placeholder="请输入生日"style="width:200px">
                </td>
            </tr>
            <tr height="40">
                <td width="100" align="right">婚姻状况：</td>
                <td>
                    <input type="radio" name="marry" value="未婚" checked="checked" />未婚
                    <input type="radio" name="marry" value="离异" />离异
                    <input type="radio" name="marry" value="丧偶" />丧偶
                </td>
            </tr>
            <tr height="40" >
                <td width="100" align="right">手机号：</td>
                <td>
                    <input type="text" name="phoneNumber" placeholder="请输入身高"style="width:200px">
                </td>
            <tr height="40" >
                <td width="100" align="right">所在地：</td>
                <td>
                    <input type="text" name="city" placeholder="请输入所在地"style="width:200px">
                </td>
            <tr height="40" >
                <td width="100" align="right">毕业院校：</td>
                <td>
                    <input type="text" name="byyx" placeholder="请输入毕业院校"style="width:200px">
                </td>
            <tr height="40" >
                <td width="100" align="right">所学专业：</td>
                <td>
                    <input type="text" name="sxzy" placeholder="请输入所学专业" style="width:200px">
                </td>
            <tr height="40" >
                <td width="100" align="right">公司：</td>
                <td>
                    <input type="text" name="company"placeholder="请输入就职公司" style="width:200px">
                </td>
            <tr height="40" >
                <td width="100" align="right">年收入：</td>
                <td>
                    <input type="text" name="money"placeholder="请输入年收入" style="width:200px">
                </td>
            </tr>
              <tr height="40" >
                <td width="100" align="right">电子邮箱：</td>
                <td>
                    <input type="text" name="email"placeholder="请输入年收入" style="width:200px">
                </td>
            </tr>
            <tr>
                <td> </td>
                <td>
                    <input type="button" value="取消"  style="width:80px;height: 30px;background: #eeedb6; margin-right: 30px">
                    <input type="submit" value="保存"  style="width:80px;height: 30px;background: #eeedb6; ">
                </td>
            </tr>
        </table>
    </form>
</div>
</div>
<script>
    //获取上传按钮
    var input1 = document.getElementById("upload");
    if (typeof FileReader === 'undefined') {
        //result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
        input1.setAttribute('disabled', 'disabled');
    } else {
        input1.addEventListener('change', readFile, false);
        /*input1.addEventListener('change',function (e){
     console.log(this.files);//上传的文件列表
 },false); */
    }

    function readFile() {
        var file = this.files[0]; //获取上传文件列表中第一个文件
        if (!/image\/\w+/.test(file.type)) {
            //图片文件的type值为image/png或image/jpg
            alert("文件必须为图片！");
            return false;
        }
        // console.log(file);
        var reader = new FileReader(); //实例一个文件对象
        reader.readAsDataURL(file); //把上传的文件转换成url
        //当文件读取成功便可以调取上传的接口
        reader.onload = function(e) {
            // console.log(this.result);//文件路径
            // console.log(e.target.result);//文件路径
            /*var data = e.target.result.split(',');
    var tp = (file.type == 'image/png')? 'png': 'jpg';
    var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
    //需要上传到服务器的在这里可以进行ajax请求
    // console.log(imgUrl);
    // 创建一个 Image 对象
    var image = new Image();
    // 创建一个 Image 对象
    // image.src = imgUrl;
    image.src = e.target.result;
    image.onload = function(){
        document.body.appendChild(image);
    }*/
            var image = new Image();
            // 设置src属性
            image.src = e.target.result;
            var max = 200;
            // 绑定load事件处理器，加载完成后执行，避免同步问题
            image.onload = function() {
                // 获取 canvas DOM 对象
                var canvas = document.getElementById("cvs");
                // 如果高度超标 宽度等比例缩放 *=
                /*if(image.height > max) {
            image.width *= max / image.height;
            image.height = max;
        } */
                // 获取 canvas的 2d 环境对象,
                var ctx = canvas.getContext("2d");
                // canvas清屏
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                // 重置canvas宽高
                /*canvas.width = image.width;
        canvas.height = image.height;
        if (canvas.width>max) {canvas.width = max;}*/
                // 将图像绘制到canvas上
                // ctx.drawImage(image, 0, 0, image.width, image.height);
                ctx.drawImage(image, 0, 0, 200, 200);
                // 注意，此时image没有加入到dom之中
            };
        }
    };
</script>
</body>
</html>