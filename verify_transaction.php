<?php
include("connection/connect.php");
session_start();

if (isset($_GET['reference'])) {
    $reference = $_GET['reference'];

    $url = "https://api.paystack.co/transaction/verify/" . rawurlencode($reference);

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "sk_live_115207e6469c018feda6bfcc7b426615bb21ff2a" // Replace with your secret key
    ]);

    $response = curl_exec($ch);
    curl_close($ch);

    $result = json_decode($response);

    if ($result->status && $result->data->status === 'success') {
        // Payment was successful
        foreach ($_SESSION["cart_item"] as $item) {
            $SQL = "INSERT INTO users_orders (u_id, title, quantity, price) VALUES ('" . $_SESSION["user_id"] . "', '" . $item["title"] . "', '" . $item["quantity"] . "', '" . $item["price"] . "')";
            mysqli_query($db, $SQL);
        }

        unset($_SESSION["cart_item"]);
        $success = "Thank you. Your order has been placed!";
        echo "<script>alert('Thank you. Your Order has been placed!');</script>";
        echo "<script>window.location.replace('your_orders.php');</script>";
    } else {
        // Payment failed
        echo "<script>alert('Payment failed. Please try again.');</script>";
        echo "<script>window.location.replace('checkout.php');</script>";
    }
} else {
    // No reference found
    echo "<script>alert('No reference found. Please try again.');</script>";
    echo "<script>window.location.replace('checkout.php');</script>";
}
?>
