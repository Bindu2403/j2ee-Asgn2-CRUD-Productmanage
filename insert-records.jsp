<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="myDataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/As2_Bindu"
                   user="root" password="Binchow1428" />


<c:choose>
    <c:when test="${param.price != null && param.price >= 100 && param.price <= 900}">
        <sql:update dataSource="${myDataSource}">
            INSERT INTO PRODUCTDETAILS (ProductNo, ProductName, ProductType, Manufacturer, Price, Weight)
            VALUES (?, ?, ?, ?, ?, ?)
            <sql:param value="${param.productNo}" />
            <sql:param value="${param.productName}" />
            <sql:param value="${param.productType}" />
            <sql:param value="${param.manufacturer}" />
            <sql:param value="${param.price}" />
            <sql:param value="${param.weight}" />
        </sql:update>
    </c:when>
    <c:otherwise>
        <c:if test="${param.price != null}">
            <div class="alert alert-danger" role="alert">
                Price must be between $100 and $900.
            </div>
        </c:if>
    </c:otherwise>
</c:choose>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Records</title>
    <!-- Include Bootstrap CSS -->
    <link href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Add Product Form</h2>
    <form action="insert-records.jsp" method="post">
        <div class="form-group">
            <label for="productNo">Product No:</label>
            <input type="text" class="form-control" id="productNo" name="productNo" placeholder="please enter product number">
        </div>
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter the name of the product">
        </div>
        <div class="form-group">
            <label>Product Type:</label>
            <div class="form-check">
                <input type="radio" class="form-check-input" id="homeAppliance" name="productType" value="Home Appliance">
                <label class="form-check-label" for="homeAppliance">Home Appliance</label>
            </div>
            <div class="form-check">
                <input type="radio" class="form-check-input" id="computerHardware" name="productType" value="Computer Hardware">
                <label class="form-check-label" for="computerHardware">Computer Hardware</label>
            </div>
            <div class="form-check">
                <input type="radio" class="form-check-input" id="gameConsole" name="productType" value="Game Console">
                <label class="form-check-label" for="gameConsole">Game Console</label>
            </div>
            <div class="form-check">
                <input type="radio" class="form-check-input" id="clothing" name="productType" value="Clothing">
                <label class="form-check-label" for="clothing">Clothing</label>
            </div>
        </div>
        <div class="form-group">
            <label for="manufacturer">Manufacturer:</label>
            <select class="form-control" id="manufacturer" name="manufacturer">
                <option>LG</option>
                <option>Samsung</option>
                <option>Laura</option>
                <option>walmart</option>
            </select>
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" class="form-control" id="price" name="price" placeholder="Enter price">
        </div>
        <div class="form-group">
            <label for="weight">Weight:</label>
            <input type="number" class="form-control" id="weight" name="weight" placeholder="Enter weight in kilograms">
        </div>
        <button type="submit" class="btn btn-primary">Add Product</button>
    </form>
</div>
       
<%-- Display all products --%>
<sql:query dataSource="${myDataSource}" var="productList">
    SELECT * FROM PRODUCTDETAILS
</sql:query>

<div class="container mt-4">
    <h3>Existing Products</h3>
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
