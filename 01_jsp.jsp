<%--
  Created by IntelliJ IDEA.
  User: 陈铭源
  Date: 2021/4/10
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>税收计算</title>
</head>
<body>
<font size="10">税收计算</font>
<br>
<jsp:useBean id="shui" class="com.example.test5.test5"></jsp:useBean>
<form method="post" onsubmit="return check()">
    月收入:<input type="text" id="num" name="num" value=<jsp:setProperty name="shui" property="num"/>>
    <br>
    <input type="submit" value="提交" id="s">
</form>
<br>
税收：<a id="money" name="money" ><jsp:getProperty name="shui" property="num"/></a>
</body>
<script>
    function check() {
        var money=document.getElementById("num").value;
        if (/[^0-9]/.test(money)){
            alert("错误：非数字");
            return false;
        }
        else
            return true;
    }
</script>
</html>
package com.example.test5;

public class test5 implements java.io.Serializable{
    private String num = null;
    public test5(){
    }
    public void setNum(String num){
        this.num = num;
    }
    public String getNum(){
        double tm = 0;
        if(num==null){
            num = "";
            return num;
        }
        else {
            double tax = Double.valueOf(num) - 1600;
            if (tax > 0 && tax <= 500)
                tm = tax * 0.05;
            else if (tax > 500 &&tax<=3000)
                tm=tax*0.1-25;
            else if(tax>3000&&tax<=5000)
                tm=tax*0.15-125;
            else if(tax>5000&&tax<=20000)
                tm=tax*0.2-375;
            else if(tax>20000&&tax<=40000)
                tm=tax*0.25-1375;
            else if(tax>40000&&tax<=60000)
                tm=tax*0.3-3375;
            else if(tax>60000&&tax<=80000)
                tm=tax*0.35-6375;
            else if(tax>80000&&tax<=100000)
                tm=tax*0.4-10375;
            else if(tax>100000)
                tm=tax*0.45-15375;
            return String.valueOf(tm);
        }

    }
}
