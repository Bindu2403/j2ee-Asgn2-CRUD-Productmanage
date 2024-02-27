<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="myDataSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/As2_Bindu"
                   user="root" password="Binchow1428" />

<%-- Execute DELETE statement if productNo parameter is present --%>
<c:if test="${not empty param.productNo}">
    <sql:update dataSource="${myDataSource}">
        DELETE FROM PRODUCTDETAILS WHERE ProductNo = ?
        <sql:param value="${param.productNo}" />
    </sql:update>
</c:if>

<%-- Query to retrieve remaining records --%>
<sql:query dataSource="${myDataSource}" var="productList">
    SELECT * FROM PRODUCTDETAILS
</sql:query>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Records</title>
    <!-- Include Bootstrap CSS -->
    <link href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
<header>Bindu_Assignment_2</header>
    <h2>Delete Product Record</h2>
    <form action="Delete-Records.jsp" method="post">
        <div class="form-group">
            <label for="productNo">Enter Product No to Delete:</label>
            <input type="text" class="form-control" id="productNo" name="productNo" placeholder="Enter product number">
            <button type="submit" class="btn btn-danger mt-2">Delete the Product</button>
        </div>
    </form>
</div>

<div class="container mt-4">

    <h3>Remaining Products</h3>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Product No</th>
                <th>Product Name</th>
                <th>Product Type</th>
                <th>Manufacturer</th>
                <th>Price</th>
                <th>Weight</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${productList.rows}">
                <tr>
                    <td><c:out value="${product.ProductNo}" /></td>
                    <td><c:out value="${product.ProductName}" /></td>
                    <td><c:out value="${product.ProductType}" /></td>
                    <td><c:out value="${product.Manufacturer}" /></td>
                    <td><c:out value="${product.Price}" /></td>
                    <td><c:out value="${product.Weight}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>
