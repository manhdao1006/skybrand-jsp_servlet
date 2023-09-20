<%-- 
    Document   : skyradio
    Created on : May 17, 2023, 4:45:29 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Skybooks Radio</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skyradio.css">
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

        <div class="wrapper grid">
            <div class="radio_header grid">
                <div class="radio_main_header grid wide">
                    <ul class="row no-gutters">
                        <li class="l-2-4 m-2-4 l-2-4"><a href="advert">Giới Thiệu</a></li>
                        <li class="l-2-4 m-2-4 l-2-4"><a href="">Thể Loại</a></li>
                        <li class="l-2-4 m-2-4 l-2-4"><a href="skyradio"><img src="./img/skybooks_radio_logo.png" alt="SkybooksRadio"></a></li>
                        <li class="l-2-4 m-2-4 l-2-4"><a href="">Sự Kiện</a></li>
                        <li class="l-2-4 m-2-4 l-2-4"><a href="">Liên Hệ</a></li>                        
                    </ul>
                </div>
            </div>
        </div>

        <div class="wrapper">
            <div class="radio_banner">
                <div class="radio_main_banner">
                    <img src="./img/skybooks_radio_banner.png" alt="SkybookRadio">
                </div>
            </div>
        </div>

        <div class="wrapper grid">
            <div class="home-main-block_container grid wide">
                <div class="img-container"></div>
                <a href="#" title="CHÚNG TA RỒI SẼ ỔN" class="title-container">Chúng ta rồi sẽ ổn thôi</a>
            </div>                
        </div>
        <!-- end home-main-block_container -->

        <div class="home-main-block-content grid">
            <div class="home-main-content grid wide row">
                <div class="home-main-content-left l-2 c-0">
                    <div class="home-main-block_category">
                        <div class="block_category">Danh mục sách</div>
                        <c:set value="${requestScope.dataCategories}" var="cats"/>
                        <div class="block_menu">
                            <ul class="block_menu_list">
                                <c:forEach items="${cats}" var="c">
                                    <li><a class="${(c.id==cid)?"active":""}" href=""><i class="fa fa-angle-right" aria-hidden="true"></i><span>${c.categoryName}</span></a></li>
                                            </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- end home-main-block_category -->
                    <div class="home-main-content_quote">
                        <div class="block_quote_title"><a href="">Trích dẫn</a></div>
                        <div class="block_quote_hot">
                            <div class="block_quote_hot_content">
                                <a href="#" title="MỘC DIỆP TỬ">
                                    <p>“Cuộc đời sẽ luôn có người vì bạn mà chọn giành mọi thứ, 
                                        cũng có người vì bạn mà từ bỏ mọi thứ, 
                                        người chọn tiến lên, người chọn lùi về, 
                                        bạn buộc phải bỏ lỡ một người mới có thể gặp được người tiếp theo....
                                    </p>
                                    <strong>MỘC DIỆP TỬ</strong>
                                </a>
                            </div>
                            <div class="block_quote_hot_image">
                                <a href="#"><img src="./img/MOC_DIEP_TU.jfif" alt="MỘC DIỆP TỬ" title="MỘC DIỆP TỬ"></a>
                            </div>
                        </div>
                        <!-- end block_quote_hote -->
                        <div class="block_quote_items">
                            <a href="#" title="MỘC DIỆP TỬ">
                                <p>Có ai đó đã nói, trong tình yêu, đừng đem hết ruột gan của mình ra bày tỏ cho đối phương, 
                                    bởi khi lớp vỏ cuối cùng bóc xong, người cay mắt nhất sẽ là bạn.
                                </p>
                                <strong>Mộc Diệp Tử</strong>
                            </a>
                        </div>

                        <div class="block_quote_items">
                            <a href="#" title="MỘC DIỆP TỬ">
                                <p>Không phải người nào làm ta đau cũng là kẻ thù, 
                                    nhưng chưa chắc người đáng cho mình trả giá đã là người để mình gắn bó yêu thương cả đời.
                                </p>
                                <strong>Mộc Diệp Tử</strong>
                            </a>
                        </div>

                        <div class="block_quote_items">
                            <a href="#" title="Kulzsc">
                                <p>Đôi lúc muốn được ôm ai đó thật lâu, 
                                    chẳng cần phải là người mình có tình cảm, bất kỳ ai cũng được, 
                                    vì có những lúc thật sự cảm thấy thiếu kết nối, thiếu yêu thương, thiếu ấm áp.
                                </p>
                                <strong>Kulzsc</strong>
                            </a>
                        </div>

                        <div class="block_quote_items">
                            <a href="#" title="Xin chào tình yêu - Hiên">
                                <p> “Anh đừng là ánh trăng Cũng đừng là Mặt Trời 
                                    Hãy chỉ là cuộc đời Của một người, là em”...
                                </p>
                                <strong>Xin chào tình yêu - Hiên</strong>
                            </a>
                        </div>
                    </div>
                </div>           
                <!-- end home-main-content_quote -->
                <div class="home-main-content-right l-9 c-12">
                    <div class="home-main-content-right_first">
                        <div class="block_heading-books">
                            <a href="">Skybooks</a>
                        </div>
                        <div class="block_content-skybooks">
                            <ul class="skybooks">
                                <c:forEach items="${requestScope.dataTop4RadioByCid_1}" var="radio">
                                    <li title="${radio.radioName}">
                                        <div class="block_content-skybooks_list">
                                            <div class="block-skybooks_information_content">                                            
                                                <a href="${radio.radioLink}" target="_blank">
                                                    <div>
                                                        <div><img width="" height="" src="./img/radio/${radio.radioImage}" alt="${radio.radioName}"></div>
                                                        <i class="fa fa-youtube-play"></i>                                                    
                                                    </div>
                                                    <p>${radio.radioName} | Skybooks Radio</p>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="home-main-content-right_first">
                        <div class="block_heading-books">
                            <a href="">Skynovel</a>
                        </div>
                        <div class="block_content-skybooks">
                            <ul class="skybooks">
                                <c:forEach items="${requestScope.dataTop4RadioByCid_2}" var="radio">
                                    <li title="${radio.radioName}">
                                        <div class="block_content-skybooks_list">
                                            <div class="block-skybooks_information_content">                                            
                                                <a href="${radio.radioLink}" target="_blank">
                                                    <div>
                                                        <div><img width="" height="" src="./img/radio/${radio.radioImage}" alt="${radio.radioName}"></div>
                                                        <i class="fa fa-youtube-play"></i>                                                    
                                                    </div>
                                                    <p>${radio.radioName} | Skybooks Radio</p>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="home-main-content-right_first">
                        <div class="block_heading-books">
                            <a href="">Tủ sách chữa lành</a>
                        </div>
                        <div class="block_content-skybooks">
                            <ul class="skybooks">
                                <c:forEach items="${requestScope.dataTop4RadioByCid_6}" var="radio">
                                    <li title="${radio.radioName}">
                                        <div class="block_content-skybooks_list">
                                            <div class="block-skybooks_information_content">                                            
                                                <a href="${radio.radioLink}" target="_blank">
                                                    <div>
                                                        <div><img width="" height="" src="./img/radio/${radio.radioImage}" alt="${radio.radioName}"></div>
                                                        <i class="fa fa-youtube-play"></i>                                                    
                                                    </div>
                                                    <p>${radio.radioName} | Skybooks Radio</p>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="home-main-content-right_first">
                        <div class="block_heading-books">
                            <a href="">Tủ sách sống khác</a>
                        </div>
                        <div class="block_content-skybooks">
                            <ul class="skybooks">
                                <c:forEach items="${requestScope.dataTop4RadioByCid_8}" var="radio">
                                    <li title="${radio.radioName}">
                                        <div class="block_content-skybooks_list">
                                            <div class="block-skybooks_information_content">                                            
                                                <a href="${radio.radioLink}" target="_blank">
                                                    <div>
                                                        <div><img width="" height="" src="./img/radio/${radio.radioImage}" alt="${radio.radioName}"></div>
                                                        <i class="fa fa-youtube-play"></i>                                                    
                                                    </div>
                                                    <p>${radio.radioName} | Skybooks Radio</p>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="home-main-content-right_first">
                        <div class="block_heading-books">
                            <a href="">Tủ sách quý cô</a>
                        </div>
                        <div class="block_content-skybooks">
                            <ul class="skybooks">
                                <c:forEach items="${requestScope.dataTop4RadioByCid_7}" var="radio">
                                    <li title="${radio.radioName}">
                                        <div class="block_content-skybooks_list">
                                            <div class="block-skybooks_information_content">                                            
                                                <a href="${radio.radioLink}" target="_blank">
                                                    <div>
                                                        <div><img width="" height="" src="./img/radio/${radio.radioImage}" alt="${radio.radioName}"></div>
                                                        <i class="fa fa-youtube-play"></i>                                                    
                                                    </div>
                                                    <p>${radio.radioName} | Skybooks Radio</p>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                </div>
                <!--end-home-main-content-right-->
            </div>
        </div>
        <!--footer-->
        <jsp:include page="footer.jsp"/>

    </body>
</html>
