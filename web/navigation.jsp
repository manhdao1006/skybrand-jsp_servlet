<%-- 
    Document   : navigation
    Created on : Apr 16, 2023, 6:51:08 PM
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
            <div class="home-navbar grid">                
                <div class="home-navbar-menu grid wide">
                    <ul class="row">
                        <li><a class="homepage" href="home"><i class="fa fa-home"></i></a></li>
                        <li><a href="advert">Giới thiệu</a></li>
                        <li><a href="#">Tin tức & Sự kiện</a></li>
                        <li>
                            <div class="home-navbar-menu-list">
                                <a href="#" class="items">Tủ sách</a>
                                <!--<c:set value="${requestScope.dataCategories}" var="cats"/>
                                <%--<c:set value="${requestScope.dataBooksByCid}" var="booksCid"/>--%>
                                <div class="block_menu">
                                    <ul class="block_menu_list">                                        
                                        <c:forEach items="${cats}" var="c">
                                            <li><a class="${(c.id==cid)?"active":""}" href="list_details_of_categories?cid=${c.id}"><i class="fa fa-angle-right" aria-hidden="true"></i><span>${c.categoryName}</span></a></li>
                                        </c:forEach>
                                    </ul>
                                </div>-->
                                <c:set value="${requestScope.dataCategories}" var="cats"/>
                                <div class="list-items_type">
                                    <ul class="list">${c.categoryName}
                                        <c:forEach items="${cats}" var="c">
                                            <li><a class="list-items-list ${(c.id==cid)?"active":""}" href="list_details_of_categories?cid=${c.id}"><i class="fa fa-angle-right" aria-hidden="true"></i> ${c.categoryName}</a></li>            
                                        </c:forEach>
                                        <!--<li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Skybooks</a></li>            
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Skynovel</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Skycomics</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Skymommy</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Sky Special</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tủ sách chữa lành</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tủ sách quý cô</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tủ sách sống khác</a></li>      
                                        <li><a class="list-items-list" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Deepbooks</a></li>      -->
                                        <li><a class="list-items-list" href="#"><i class="fa" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li><a href="#">Tác giả</a></li>
                        <li><a href="#">Trích dẫn</a></li>
                        <li><a href="#">Thông báo - Tuyển dụng</a></li>
                        <li><a href="#">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- end home-navbar -->
    </body>
</html>
