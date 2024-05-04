<?php
require 'vendor/autoload.php'; // Include Guzzle

use GuzzleHttp\Client;

// Initialize Guzzle client
$client = new Client();

// Set your PayMongo Secret Key
$secretKey = 'sk_test_4aUH7wjUzJCAmaHp8uSua9gY';

// Set up the request parameters
$data = [
    'data' => [
        'attributes' => [
            'amount' => 4000, // Amount in cents (e.g., 10000 for PHP 100.00)
            'description' => 'Test Payment',
            'redirect' => [
                'success' => 'http://localhost/mvos-ndkc/?page=orders/my_orders',
                'cancel' => 'http://localhost/mvos-ndkc/',
            ],
        ],
    ],
];

// Send a POST request to create the checkout session
$response = $client->post('https://api.paymongo.com/v1/checkout/sessions', [
    'headers' => [
        'Authorization' => 'Basic ' . base64_encode($secretKey . ':'),
        'Content-Type' => 'application/json',
    ],
    'json' => $data,
]);

// Extract the checkout URL from the response body
$responseData = json_decode($response->getBody(), true);
$checkoutUrl = $responseData['data']['attributes']['url'];

// Redirect the user to the checkout URL
header('Location: ' . $checkoutUrl);
exit;
?>
