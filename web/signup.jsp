<%-- 
    Document   : signup
    Created on : May 4, 2023, 2:52:14 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.icon.webp">
    </head>
    <body>
        <div class="block_login">
            <div class="formLogin">
                <h3 class="form_main">${requestScope.error}</h3>
                <h3 class="form_main">ĐĂNG KÝ</h3>
                <form class="form_main" action="signup" method="post">
                    <div class="lbl">Tài khoản</div>
                    <input class="txt" type="text" name="user" required/><br/>
                    <div class="lbl">Mật khẩu</div>
                    <input class="txt" type="password" name="pass" required/><br/>
                    <div class="lbl">Nhập lại mật khẩu</div>
                    <input class="txt" type="password" name="repass" required/><br/>
                    <div class="btnSignup"><input class="btn" type="submit" value="Đăng Ký"/></div>
                </form>
            </div>
        </div>
    </body>
</html>
