<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="prices.*"%>
<%@page import="tags.*"%>
<%@page import="com.myapp.struts.*" %>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib prefix="mine" uri="TagFunctions"%>


<jsp:useBean id="cart" class="prices.Shopping" scope="session"/>
<jsp:setProperty name="cart" property="*"/>

<jsp:useBean id="info" class="com.myapp.struts.LoginForm" scope="application"/>
<jsp:setProperty name="info" property="*"/>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Success</title>
    </head>
    <body style ="background-color: purple">
        Welcome To Alexias eShop, <strong><em>${info.name}</em></strong>.
        
        
        <form method="post" action="success.jsp">
            <table border="1" cellpadding="5" width="300">
                <tr>
                    <td align="center"><strong>Item</strong></td>
                    <td align="center"><strong>Price</strong></td>
                    <td align="center"><strong>Quantity</strong></td>
                    <td align="center"><strong>Total</strong></td>
                </tr>
                <tr>
                    <td align="left">Cafe</td>
                    <td>${mine:parse(0)}</td>
                    <td><input type="text" name="firstQ" value="<jsp:getProperty name="cart" property="firstQ"/>"/></td>
                    <td align="right">${mine:parse(0)*cart.firstQ}</td>
                </tr>
                <tr>
                    <td align="left">Sugar</td>
                    <td>${mine:parse(1)}</td>
                    <td><input type="text" name="secondQ" value="<jsp:getProperty name="cart" property="secondQ"/>"></td>
                    <td align="right">${mine:parse(1)*cart.secondQ}</td>
                </tr>
                <tr>
                    <td align="left">Water</td>
                    <td>${mine:parse(2)}</td>
                    <td><input type="text" name="thirdQ" value="<jsp:getProperty name="cart" property="thirdQ"/>"></td>
                    <td align="right">${mine:parse(2)*cart.thirdQ}</td>
                </tr>
                <tr>
                    <td align="left">Total</td>
                    <td></td>
                    <td></td>
                    <td align="right">${mine:parse(0)*cart.firstQ+mine:parse(1)*cart.secondQ+mine:parse(2)*cart.thirdQ}</td>
                </tr>
            </table>
            <input type="submit" value="Checkout" name="Checkout"/>
            <p>Your e-receipt will be send to: ${info.email}, after your purchase.</p>

            <a href ="http://alexiakourfali.wordpress.com/2012/01/17/final-www-technologies-project/" target="_blank"> ReadMe </a>
        </form>
        <p>&copy;${mine:reuse(0)}</p>
        <p>${mine:reuse(1)}</p>
        <p>${mine:reuse(2)}</p>
    </body>
</html>
