<%-- 
    Document   : skybooks
    Created on : Mar 30, 2023, 12:04:21 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Skybooks Clone by manod</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin.css">
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

        <div>
            <div class="wrapper grid">
                <div class="admin_header grid">
                    <div class="admin_top grid wide row">
                        <div class="admin_top_left l-6 m-6 c-6">
                            <div class="logo"><img src="./img/logo.png" alt="Skybooks Logo"/></div>
                        </div>

                        <div class="admin_top_right l-6 m-6 c-6">
                            <div class="infor_account">
                                <a class="account" href="infor"><i class="fa fa-user" aria-hidden="true"></i> <span>${sessionScope.admin.username}</span></a>
                            </div>
                            <div class="logout_account">
                                <a class="logout" href="logout"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Đăng xuất</span></a>
                            </div>
                        </div>
                    </div>
                </div>            
                <!--end-header-top-->

                <div class="admin_center grid">
                    <div class="admin_middle grid wide row">
                        <div class="admin_middle_left no-gutters l-3">
                            <div>ADMIN</div>
                            <div class="home_page">
                                <a href="home"><i class="fa fa-home" aria-hidden="true"></i> <span>Home</span></a>
                            </div>
                            <div class="block_management">
                                <ul class="block_management_list">
                                    <li>
                                        <div class="block_management_list_items" id="management_books">
                                            <i class="fa fa-book" aria-hidden="true"></i>
                                            <span>Management Books</span>
                                            <i id="arrow" class="fa fa-chevron-down" aria-hidden="true"></i>
                                        </div>
                                        <div class="block_management_books" id="type_books">
                                            <ul id="management_books_clone">
                                                <c:forEach items="${requestScope.dataCategories}" var="cats">
                                                    <li><a href="#">${cats.categoryName}</a></li>
                                                    </c:forEach>
                                            </ul>
                                        </div>
                                    </li>

                                    <li>  
                                        <div class="block_management_list_items">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <span>Management Users</span>
                                            <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="admin_middle_right no-gutters l-9">
                            <form class="form_add" action="add" method="post" enctype="multipart/form-data">
                                <div class="form_content">
                                    <div class="items_infor">
                                        <label class="lbl">Mã sách:</label>
                                        <input class="txt" type="text" name="bookID"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Tên sách:</label>
                                        <input class="txt" type="text" name="bookName"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Tác giả:</label>
                                        <input class="txt" type="text" name="author"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Thể loại:</label>
                                        <select class="select" name="cID">
                                            <c:forEach items="${requestScope.dataCategories}" var="cats">
                                                <option name="" value="${cats.id}">${cats.categoryName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Giá cả:</label>
                                        <input class="txt" type="number" name="price"/>
                                    </div> 

                                    <div class="items_infor">
                                        <label class="lbl">Số lượng:</label>
                                        <input class="txt" type="number" name="quantity"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Năm XB:</label>
                                        <input class="txt" type="number" name="publishingYear"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Nhà XB:</label>
                                        <select class="select" name="pcID">
                                            <c:forEach items="${requestScope.dataPublishingCompanies}" var="pc">
                                                <option name="" value="${pc.id}">${pc.companyName}</option>
                                            </c:forEach>                                        
                                        </select>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Ngôn ngữ:</label>
                                        <input class="txt" type="text" name="language"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Số trang:</label>
                                        <input class="txt" type="number" name="pageNumber"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Hình thức:</label>
                                        <input class="txt" type=" text" name="form"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Trọng lượng:</label>
                                        <input class="txt" type="number" name="weight"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Hình ảnh:</label>
                                        <input class="txt" type="file" name="image"/>
                                    </div>

                                    <div class="items_infor">
                                        <label class="lbl">Mô tả:</label>
                                        <textarea class="txt" id="" name="describe" rows="5" cols="10"></textarea>
                                    </div>

                                    <div class="btn_add"><input class="btn" type="submit" value="Add"/></div>
                                </div>                                
                            </form>                            
                        </div>
                    </div>
                    <!--end-middle-->

                    <div class="admin_middle_list grid wide">
                        <!--<h3><a href="add">Add new</a></h3>-->
                        <table>
                            <tr>
                                <th>Mã sách</th>
                                <th>Tên sách</th>
                                <th>Tác giả</th>
                                <th>Giá cả</th>
                                <th>Số lượng</th>
                                <th>Năm xuất bản</th>
                                <th>Nhà xuất bản</th>
                                <th>Ngôn ngữ</th>
                                <th>Hình thức</th>
                                <th>Số trang</th>
                                <th>Thể loại</th>
                                <th>Trọng lượng</th>                                
                                <!--<th>Mô tả</th>-->
                                <th>Hình ảnh</th>
                                <th>ACTION</th>
                            </tr>
                            <c:forEach items="${requestScope.dataBooks}" var="b">
                                <tr>
                                    <td>${b.id}</td>
                                    <td>${b.bookName}</td>
                                    <td>${b.author}</td>
                                    <td><fmt:formatNumber type="number" pattern="#,###" value="${b.price}"/> VNĐ</td>
                                    <td>${b.quantity}</td>
                                    <td>${b.publishingYear}</td>
                                    <td>${b.pcompany.companyName}</td>
                                    <td>${b.language}</td>
                                    <td>${b.form}</td>
                                    <td>${b.numberPage}</td>
                                    <td>${b.category.categoryName}</td>
                                    <td>${b.weight}</td>
                                    <!--<td>${b.bookDescribe}</td>-->
                                    <td><img src="./img/books/${b.bookImage}" width="240px" height="240px"alt="${b.bookName}"/></td>
                                    <td><a href="#">UPDATE</a>||<a href="#">DELETE</a></td>
                                </tr>        
                            </c:forEach>
                        </table>
                    </div>

                </div>

                <div></div>
                <!--end-bottom-->
            </div>
        </div>
    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin.js"></script>  
</html>
