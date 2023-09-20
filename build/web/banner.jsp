<%-- 
    Document   : banner
    Created on : Apr 16, 2023, 6:50:36 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skybooks.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper grid">
            <div class="home-banner grid wide">                
                <div class="home-header-banner row">
                    <div class="home-header-banner-left l-4">
                        <a href="home"><img class="logo" src="./img/logo.png"></a>
                    </div>

                    <div class="home-header-banner-center l-4">
                        <div class="home-header-banner-center-search">
                            <button class="submit" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                            <input type="text" class="search" placeholder="Tìm kiếm... ">
                        </div>
                    </div>

                    <div class="home-header-banner-right l-4">
                        <c:if test="${sessionScope.account==null}">
                            <div class="home-header-banner-right-login">
                                <a class="login" href="loginaccount"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng nhập</span></a>
                            </div>
                            <div class="home-header-banner-right-signin">
                                <a class="signin" href="signup"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> <span>Đăng ký</span></a>
                            </div>
                            <div class="home-header-banner-right-like">
                                <a class="like" href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                            <div class="home-header-banner-right-cart">
                                <a class="cart" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.account!=null}">
                            <div class="home-header-banner-right-account">
                                <a class="account" href="infor"><i class="fa fa-user" aria-hidden="true"></i> <span>${sessionScope.account.username}</span></a>
                            </div>
                            <div class="home-header-banner-right-logout l-3">
                                <a class="logout" href="logout"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng xuất</span></a>
                            </div>
                            <div class="home-header-banner-right-like l-3">
                                <a class="like" href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                            <div class="home-header-banner-right-cart l-3">
                                <a class="cart" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                            </div>
                        </c:if>                        
                    </div>
                </div>
            </div>    
        </div>   
        <!-- end home-banner -->
    </body>
</html>
