<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Program work</title>
</head>
<body>
<h1>How the program works</h1>
<p> Firstly, Added all the dependencies required, converted my project to a maven project and added all the dependencies 
<br>used my sql workbench to store the data and added sql:setDatsource  tag to set up the datbase connection using the url , username and password<br>
As per the project instrustions forsltly created a Add-product-form, where when the user fill the form using EL Commands the details will be displayed when used clicks on Add product <br>
As the page will be redirected to the same Add-prodyct-form we can see the details displayed once submitted.</p>

<p>After, updated the form to insert-records.jsp. the details enter by the user will be sent to the server <br>
sql:query is used to retrieve the current state of data from the database and store it in a variable.</p>
<h1>Purpose of c:set and fmt:formatNumber</h1>

<p>c:set-Suppose you have a value or a result from an expression that you want to use multiple times in your JSP page.<br>
 Instead of recalculating or retrieving it each time, you can store it using c:set and then use it wherever needed.</p>
 
 <p>frmt:Formate number - It is basically use to formate a number to make it more cler and nicer more presentable. formate number can turn a number into price by adding doller symbol. more clear and more understandable adn readable.

<h1>Part-D</h1>
<P>The variable p is declared within a scriplet<br> variables are not directly accessible. As a result, ${p} in ${p} ${q}  will not display anything.</P>
<p>In the first step 1:, there is a scriptlet declaration which creates an integer variable named 'p' with an initial value of 500. The value of this variable is then displayed in the HTML. Consequently, "500" appears as output for Step 1.
<br>
Step 2: employs JSTL tags initializes another variable called 'q' with a value of 600. However, if JSTL has not been configured correctly,  might fail to display "600". Also contains syntax errors; it ought to be corrected, but woul not show any result since scriptlet variables are inaccessible directly within the context of JSTL tags.
In Step 3, there is an attempt made at displaying both variables 'p' and 'q' using EL (Expression Language). Nevertheless, accessing variable 'p' through EL fails due to limitations on reaching scriptlet variables in such manner while showcasing variable 'q', again reliant on proper configuration settings for JSTL.
To rectify these issues:
<p>For displaying 'p' utilizing EL mechanism, you  must set it as an attribute inside a designated object like request or session available in the specific Java Server Page. 
  Ensuring correct setup and configuration for employing c:set and c:out from within appropriate sections involvingJSTLtagnamesis essential.
 <br> Rectifying syntactical error</p>
</body>
</html>