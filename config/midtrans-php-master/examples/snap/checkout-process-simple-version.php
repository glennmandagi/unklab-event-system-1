<?php

namespace Midtrans;

require_once dirname(__FILE__) . '/../../Midtrans.php';
//Set Your server key
Config::$serverKey = "SB-Mid-server-o4xHqK14Mia1XLVmGpTSVHgY";
// Uncomment for production environment
// Config::$isProduction = true;
Config::$isSanitized = Config::$is3ds = true;

// Required
$transaction_details = array(
    'order_id' => $_SESSION['array']['code'],
    // 'gross_amount' => 94000, // no decimal allowed for creditcard
);
// Optional
$item_details = array (
    array(
        'id' => $_SESSION['array']['ev_id'],
        'price' => $_SESSION['array']['ev_price'],
        'quantity' => 1,
        'name' => $_SESSION['array']['ev_title']
    ),
  );
// Optional
$customer_details = array(
    'first_name'    => $_SESSION['array']['f_name'],
    'last_name'     => $_SESSION['array']['l_name'],
    'email'         => $_SESSION['array']['email']
    // 'phone'         => "081122334455"
    // 'billing_address'  => $billing_address,
    // 'shipping_address' => $shipping_address
);
// Fill transaction details
$transaction = array(
    'transaction_details' => $transaction_details,
    'customer_details' => $customer_details,
    'item_details' => $item_details,
);

$snapToken = Snap::getSnapToken($transaction);
echo "Name       : " . $_SESSION['array']['f_name'] . ' ' . $_SESSION['array']['l_name']."<br>";
echo "Email      : " . $_SESSION['array']['email']."<br>";
echo "Event      : " . $_SESSION['array']['ev_title']."<br>";
echo "Price      : " . $_SESSION['array']['ev_price']."<br>";
//echo "snapToken = ".$snapToken;
?>

<!DOCTYPE html>
<html>
    <body>
        <button id="pay-button">Pay!</button>
        <!-- TODO: Remove ".sandbox" from script src URL for production environment. Also input your client key in "data-client-key" -->
        <script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="SB-Mid-client-6OKz1fCli1DzBWiE"></script>
        <script type="text/javascript">
            document.getElementById('pay-button').onclick = function(){
                // SnapToken acquired from previous step
                snap.pay('<?php echo $snapToken?>');
            };
        </script>
    </body>
</html>
