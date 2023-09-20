<%-- 
    Document   : add
    Created on : Apr 13, 2023, 1:42:14 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3 style="color: red">${requestScope.ms}</h3>
        <form class="form_add" action="add" method="post" enctype="multipart/form-data">
            <!--<div class="form_content">-->
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
                <select name="cID" id="cID">
                    <c:forEach items="${requestScope.dataCategories}" var="cats">                        
                        <option selected="" name="" value="${cats.id}">${cats.categoryName}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="items_infor">
                <label class="lbl">Năm XB:</label>
                <input class="txt" type="number" name="publishingYear"/>
            </div>

            <div class="items_infor">
                <label class="lbl">Nhà XB:</label>
                <select name="pcID" id="pcID">
                    <c:forEach items="${requestScope.dataPublishingCompanies}" var="pc">
                        <option selected="" name="" value="${pc.id}">${pc.companyName}</option>
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
            <!--</div>-->                                
        </form> 
    </body>
</html>
