<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product Form</title>
    
    <link href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
<header>Bindu_Assignmenet_2</header>
    <h2>Add Product Form</h2>
    <form action="Add-Product-Form.jsp" method="post">
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

<%-- Display the submitted form data using EL --%>
<c:if test="${not empty param.productNo}">
    <div class="container mt-4">
        <h3>The following information is received:</h3>
        <p>Product No is: ${param.productNo}</p>
        <p>Product name is: ${param.productName}</p>
        <p>Product type is: ${param.productType}</p>
        <p>Manufacturer is :${param.manufacturer}</p>
        <p>Price is :${param.price}</p>
        <p>Weight is :${param.weight}</p>
    </div>
</c:if>

<script src="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>
