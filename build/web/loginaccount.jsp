<%-- 
    Document   : login
    Created on : Apr 3, 2023, 1:14:42 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.icon.webp">
        
    </head>
    <body>
        <div class="block_login">
            <div class="formLogin">
                <h3 class="form_main" >${requestScope.error}</h3>
                <form class="form_main" action="loginaccount" method="post">
                    <div class="lbl">Enter username</div>
                    <input class="txt" type="text" name="user"/><br/>
                    <div class="lbl">Enter password</div>
                    <input class="txt" type="password" name="pass"/><br/>
                    <div class="ckb"><input type="checkbox"/>Remember me?</div>
                    <div class="btnLogin"><input class="btn" type="submit" value="LOGIN"/></div>
                </form>
            </div>
        </div>
    </body>
</html>
