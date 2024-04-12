<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to Building System</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-image: linear-gradient(to right, #f0f2f5, #d3d8e8);
        font-family: 'Roboto', sans-serif; 
    }
    .container {
        background-color: rgba(255, 255, 255, 0.9); 
        padding: 30px;
        border-radius: 15px; 
        box-shadow: 0 0 20px rgba(0,0,0,0.1); 
        max-width: 500px; 
        margin: 100px auto; 
    }
    h2 {
        color: #007bff; 
        margin-bottom: 30px;
        text-align: center; 
    }
    label {
        font-weight: bold;
        color: #333; 
    }
    button[type="submit"] {
        width: 100%;
        padding: 10px 0; 
        margin-top: 20px;
        font-weight: bold;
        background-color: #3498db; 
        border: none;
        border-radius: 5px; 
        color: #fff; 
        transition: background-color 0.3s; 
    }
    button[type="submit"]:hover {
        background-color: #2980b9; 
    }
</style>
</head>
<body>
<div class="container">
    <h2>Welcome to Building System</h2>
    <form action="AddProductServlet" method="post">
        <div class="form-group">
            <label for="itemCode">Item Code:</label>
            <input type="text" class="form-control" id="itemCode" name="itemCode" required>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity:</label>
            <input type="text" class="form-control" id="quantity" name="quantity">
        </div>
        <button type="submit" class="btn btn-primary">Add Product</button>
    </form>
    <form action="PrintBillServlet" method="get" class="mt-3">
        <button type="submit" class="btn btn-success">Generate Bill</button>
    </form>
</div>
</body>
</html>
