<%-- 
    Document   : list_details_of_books
    Created on : Mar 30, 2023, 2:57:38 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:set value="${requestScope.dataBook}" var="book"/>
        <title>${book.bookName}</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skybooks.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/list_details_of_books.css">        
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
        <c:set value="${requestScope.dataBook}" var="book"/>
        <c:set value="${requestScope.dataBooks}" var="books"/>
        <c:if test="${books != null }">

            <div class="content grid">                
                <div class="content_details grid wide row">

                    <div class="content_details-left no-gutters l-5 m-12 c-12">
                        <div class="content_main-left">
                            <img src="./img/books/${book.bookImage}" alt="${book.bookName}" title="${book.bookName}"/>
                        </div>
                    </div>

                    <div class="content_details-right no-gutters l-7 m-12 c-12">
                        <div class="content_main-right">

                            <div class="bookname">${book.bookName}</div>
                            <div class="author">Tác giả: <a href="#">${book.author}</a></div>
                            <div class="infor_books">
                                <div class="quality">
                                    <a href="#">
                                        <m>5</m>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </a>
                                </div>

                                <div class="review">
                                    <a href="#">
                                        <m>5</m>
                                        <m>Đánh Giá</m>
                                    </a>
                                </div>

                                <div class="sold">
                                    <a href="#">
                                        <m>5</m>
                                        <m>Đã Bán</m>
                                    </a>
                                </div>

                            </div>

                            <div class="price">
                                <td><fmt:formatNumber type="number" pattern="#,###" value="${book.price}"/> VNĐ</td>
                            </div>

                            <div class="address">
                                Giao đến:
                            </div>

                            <div class="quantity">
                                Số lượng:
                                <button><a href="#">-</a></button>
                                <input clas="num" type="text" name="num" value="1" aria-valuenow="" role="spinbutton"/>
                                <button><a href="#">+</a></button>
                                <i style="font-size: 14px; color: gray">${book.quantity} sản phẩm còn trong kho</i>
                            </div>

                            <form class="block_cart" action="" method="">
                                <input class="add_cart" type="button" onclick="" value="Thêm vào giỏ hàng"/>
                            </form>

                            <form class="block_buy" action="" method="">
                                <input class="buy" type="button" onclick="" value="Mua ngay"/>
                            </form>
                        </div>
                    </div>

                </div>


                <div class="content_describe_top grid wide row">
                    <div class="content_main_top-left no-gutters l-5 m-12 c-12">
                        <div class="content_describe_main-left">
                            <div class="bookname">Chi tiết sản phẩm</div>
                            <table>
                                <tr>
                                    <th>Tác giả</th>
                                    <td>${book.author}</td>
                                </tr>
                                <tr>
                                    <th>NXB</th>
                                    <td>${book.pcompany.companyName}</td>
                                </tr>
                                <tr>
                                    <th>Năm XB</th>
                                    <td>${book.publishingYear}</td>
                                </tr>
                                <tr>
                                    <th>Ngôn ngữ</th>
                                    <td>${book.language}</td>
                                </tr>
                                <tr>
                                    <th>Trọng lượng (gr)</th>
                                    <td>${book.weight}</td>
                                </tr>
                                <tr>
                                    <th>Số trang</th>
                                    <td>${book.numberPage}</td>
                                </tr>
                                <tr>
                                    <th>Hình thức</th>
                                    <td>${book.form}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="content_main_top-right no-gutters l-7 m-12 c-12">

                    </div>

                    <hr>

                </div>


                <div class="content_describe_bottom grid wide">
                    <div class="describe_title">Mô Tả Sản Phẩm</div>
                    <p class="describe_content">${book.bookDescribe}</p>
                </div>
            </div>
        </c:if>
        <jsp:include page="footer.jsp"/>
    </body>
</html>