
<%@ page import="java.util.List" %>
<%@ page import="com.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bill</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa; 
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1); 
    }
    h2{
    
     //font-family: "Pacifico";
    }
    h2, h3 {
        color: #007bff; /* Blue heading color */
    }
    th, td {
        text-align: center;
    }
    .btn {
        margin-top: 10px;
    }
    .header1{
    background-color: #ff99bb;
    }
</style>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col text-center">
            <h2>DAILY NEEEDS</h2>
            <p><strong>123,Dream Street, Cityville, Country-234234</strong></p>
            <p><strong>Phone:</strong> +123-456-7890 | <strong>Email:</strong> info@dailyneeds.com</p>
        
        </div>
    </div>
    <hr>
    <h4 class="text-center">Bill No:201</h4>
    <div class="row mt-4">
        <div class="col">
            <table class="table table-bordered">
                <thead > 
                    <tr class="header1">
                        <th>Item</th>
                        <th>Item Code</th>
                        <th>Rate</th>
                        <th>Quantity</th>
                        <th>Values</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Product> products = (List<Product>) request.getAttribute("products");
                        double totalWithoutTaxes = 0;
                        if (products != null) {
                            for (Product product : products) {
                    %>
                    <tr>
                        <td><%= product.getItem() %></td>
                        <td><%= product.getItemCode() %></td>
                        <td><%= product.getPrice() %></td>
                        <td><%= product.getQuantity() %></td>
                        <td><%= product.getTotalWithoutTaxes() %></td>
                    </tr>
                    <% 
                                totalWithoutTaxes += product.getTotalWithoutTaxes();
                            }
                        } else {
                    %>
                    <tr><td colspan='5'>No products found</td></tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col text-right">
            <p>Total (W/O tax): <%= totalWithoutTaxes %></p>
            <hr>
            <p>Tax (18%): <%= String.format("%.2f", totalWithoutTaxes * 0.18) %></p>
            <hr> 
            <h4>Grand Total: <%= totalWithoutTaxes + (totalWithoutTaxes * 0.18) %></h4>
       <button class="btn btn-primary" onClick="window.print()">Print Bill</button>
<button class="btn btn-success" onclick="document.getElementById('newBillForm').submit()">New Bill</button>
<form id="newBillForm" action="ClearProductsServlet" method="post"></form>

        </div>
    </div>
</div>

</body>
</html>
