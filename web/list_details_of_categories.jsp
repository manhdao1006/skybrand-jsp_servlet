<%-- 
    Document   : details
    Created on : Mar 30, 2023, 12:12:10 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SkyBooks</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">       
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skybooks.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/list_details_of_categories.css">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.icon.webp">        

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>        
        <jsp:include page="header.jsp"/>
        <jsp:include page="banner.jsp"/>
        <jsp:include page="navigation.jsp"/>
        <div class="clr"></div>
        <div class="grid">
            <div class="grid wide row">
                <c:forEach var="c" items="${requestScope.dataCategories}">
                    <c:if test="${c.id==cid}">
                        <div class="grid title_category">                    
                            <h2 class="">${c.categoryName}</h2>
                        </div>
                    </c:if>
                </c:forEach>

                <c:set var="booksByPage" value="${requestScope.dataBooksByPage}"/>
                <c:if test="${booksByPage != null}">
                    <div class="list-items">
                        <ul class="row no-gutters">
                            <c:forEach items="${booksByPage}" var="skb">   
                                <li class="no-gutters row l-3 c-6">
                                    <c:set var="bookID" value="${requestScope.dataBook}"/>
                                    <a class="${(skb.id == bookId)?"active":""}" href="list_details_of_books?bookId=${skb.id}">
                                        <div class="infor_category_book">
                                            <div class="anh"><img src="./img/books/${skb.bookImage}" alt="${skb.bookName}" title="${skb.bookName}"/></div>
                                            <p class="category_bookName">${skb.bookName}</p>
                                            <!--<p class="category_price"><fmt:formatNumber type="number" pattern="#,###" value="${skb.price}"/> VNĐ</p>-->
                                        </div>
                                    </a>
                                </li>                              
                            </c:forEach>                    
                        </ul>
                    </div>
                </c:if>

                <c:set var="page" value="${requestScope.page}"/>
                <div class="pagination grid row">
                    <div>
                        <c:if test="${page > 1}">
                            <a class="${i-1==page?"active":""}" href="list_details_of_categories?page=${page-1}&&cid=${cid}"><</a>
                        </c:if>
                        <c:forEach begin="${1}" end="${requestScope.numpage}" var="i">
                            <!--khi click vao la goi so trang 'i'-->
                            <!--dang o trang nao thi 'active', con ko thi ko active-->
                            <a class="${i==page?"active":""}" href="list_details_of_categories?page=${i}&&cid=${cid}">${i}</a>
                        </c:forEach>
                        <c:if test="${page < requestScope.numpage}">
                            <a class="${i+1==page?"active":""}" href="list_details_of_categories?page=${page+1}&&cid=${cid}">></a>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
