<?php
$servername = "localhost";
$username = "root";
$password = "james";
$dbname = "esun";

// 建立資料庫連線
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// 查詢資料庫
$sql = "SELECT ProductID, ProductName, Price, Quantity FROM product";
$result = $conn->query($sql);

// 將查詢結果轉換為JSON格式並返回給前端
if ($result->num_rows > 0) {
    $rows = array();
    while($row = $result->fetch_assoc()) {
        $rows[] = $row;
    }
    echo json_encode($rows);
} else {
    echo "0 results";
}

$conn->close();
?>