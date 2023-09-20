<%-- 
    Document   : advert
    Created on : May 16, 2023, 3:00:08 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Skybooks Advert</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/advert.css">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.icon.webp">
        <!-- <link rel="stylesheet" href="/skybooks/css/responsive_home.css"> -->
        <!-- [if lt IE 9]>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js" integrity="sha512-qWVvreMuH9i0DrugcOtifxdtZVBBL0X75r9YweXsdCHtXUidlctw7NXg5KVP3ITPtqZ2S575A0wFkvgS2anqSA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
         <![endif]-->
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <div class="ad_main_body grid">
            <div class="wrapper grid">
                <div class="ad_navigation grid">
                    <div class="ad_main_navigation grid wide">
                        <ul class="row no-gutters">
                            <li class="l-2-4"><a href="home">Sky Shop</a></li>
                            <li class="l-2-4"><a href="">Sky Review</a></li>
                            <li class="l-2-4"><a href="">Sky Competition</a></li>
                            <li class="l-2-4"><a href="">Sky Read</a></li>
                            <li class="l-2-4"><a href="skyradio">Sky Radio</a></li>                        
                        </ul>
                    </div>                
                </div>
            </div>

            <div class="wrapper">
                <div class="ad_banner">
                    <div class="ad_main_banner">
                        <img src="./img/brand.webp" alt="Brand of Skybooks">
                    </div>
                </div>
            </div>

            <div class="wrapper grid">
                <div class="ad_introduce grid">
                    <div class="ad_header_introduce grid wide">Giới thiệu</div>
                    <div class="ad_content_introduce grid wide">
                        <div class="introduce_top row">
                            <div class="introduce_items l-4">
                                <div class="introduce_title">Sky Shop</div>
                                <div class="introduce_content">Nơi Skybooks giúp độc giả có thể rinh những cuốn sách về giỏ hàng và hơn thế nữa là tận tay bạn</div>
                            </div>
                            <div class="introduce_items l-4">
                                <div class="introduce_title">Sky Competition</div>
                                <div class="introduce_content">Nơi mà bạn giao lưu với nhiều đọc giả khác nhau qua các cuộc thi mà Skybooks tổ chức</div>
                            </div>
                            <div class="introduce_items l-4">
                                <div class="introduce_title">Sky Radio</div>
                                <div class="introduce_content">Nơi bạn có thể thả hồn mình vào những thanh âm Radiobooks</div>
                            </div>
                        </div>
                        <div class="introduce_bottom row">
                            <div class="introduce_items l-3"></div>
                            <div class="introduce_items l-3">
                                <div class="introduce_title">Sky Review</div>
                                <div class="introduce_content">Nơi mà bạn có thể viết ra những dòng suy nghĩ, cảm nhận của mình về những cuốn sách đã đọc qua từng dòng chữ</div>
                            </div>
                            <div class="introduce_items l-3">
                                <div class="introduce_title">Sky Read</div>
                                <div class="introduce_content">Nơi đọc giả có thể đọc những cuốn sách hay bằng các thiết bị điện tử thông minh</div>
                            </div>
                            <div class="introduce_items l-3"></div>
                        </div>
                    </div>
                </div>
            </div>

            <!--footer-->
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
