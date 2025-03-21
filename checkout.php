<?php 
if($_settings->userdata('id') == '' || $_settings->userdata('login_type') != 2){
    echo "<script>alert('You dont have access for this page'); location.replace('./');</script>";
}
?>
<style>
    .product-logo{
        width:7em;
        height:7em;
        object-fit:cover;
        object-position:center center
    }
</style>
<section class="py-3">
    <div class="container">
        <div class="content px-3 py-5 bg-gradient-dark">
            <h3 class=""><b>Checkout</b></h3>
        </div>
        <div class="row mt-n4  justify-content-center align-items-center flex-column">
            <div class="col-lg-10 col-md-11 col-sm-12 col-xs-12">
                <div class="card rounded-0 shadow">
                    <div class="card-body">
                        <div class="container-fluid">
                        <?php 
                            $cart_total = $conn->query("SELECT SUM(c.quantity * p.price) FROM `cart_list` c inner join product_list p on c.product_id = p.id inner join category_list cc on p.category_id = cc.id where customer_id = '{$_settings->userdata('id')}' ")->fetch_array()[0];
                            $cart_total = $cart_total > 0 ? $cart_total :0;
                        ?>
                            <form action="" id="order-form" method="POST">
                                <input type="hidden" name="total_amount" value="<?= $cart_total ?>">
                                <h3><b>Total: <?= format_num($cart_total,2) ?></b></h3>
                                <div class="form-group">
                                    <label for="name" class="control-label">Name</label>
                                    <input type="text" id="name" name="name" class="form-control form-control-sm rounded-0" required>
                                </div>
                                <div class="form-group">
                                    <label for="mobile" class="control-label">Mobile</label>
                                    <input type="tel" id="mobile" name="mobile"  class="form-control form-control-sm rounded-0" pattern="[6-9]{1}[0-9]{9}" required maxlength="10">
                                </div>
                                <div class="form-group">
                                    <label for="email" class="control-label">Email</label>
                                    <input type="email" id="email" name="email" class="form-control form-control-sm rounded-0" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="delivery_address" class="control-label">Delivery Address</label>
                                    <textarea name="delivery_address" id="delivery_address" cols="30" rows="4" class="form-control form-control-sm rounded-0" required></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="payment_mode" class="control-label">Payment Mode</label>
                                    <select id="payment_mode" name="payment_mode" onchange="load_payment_info(this.value);" class="form-control">
                                        <option value="COD">COD</option>
                                        <option value="ONLINE">Online (UPI)</option>
                                    </select>
                                </div>

                                <div class="form-group" id="pay_ref_box" style="display:none;">
                                    <div class="form-group">
                                        <img src="assets/qr/upi_qr.jpg" style="height:130px;" alt="">
                                        <a href="upi://pay?pa=sneha.logu123@okhdfcbank&amp;pn=Sneha" style="border:1px solid #0007;padding:10px;background-color:green;color:#fff;">Click here to pay</a>
                                    </div>
                                    <div class="form-group">
                                        <label for="payment_ref" class="control-label">Transaction Id</label>
                                        <input id="payment_ref" name="payment_ref" class="form-control form-control-sm rounded-0">
                                    </div>
                                </div>

                                <div class="py-1 text-center">
                                    <button class="btn btn-lg btn-deafault text-light bg-gradient-dark col-lg-4 col-md-6 col-sm-12 col-xs-12 rounded-pill">Place Order</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>

    function load_payment_info(paymode){
        if(paymode=='ONLINE'){
            document.getElementById("pay_ref_box").style.cssText = "display:block;";
        }else{
            document.getElementById("pay_ref_box").style.cssText = "display:none;";
        }
    }


    $(function(){
        $('#order-form').submit(function(e){
            var mode = document. getElementById("payment_mode").value;
var trans_id = document.getElementById("payment_ref").value;
if(mode=='ONLINE' && !(trans_id.length>8)){
alert('Please enter the Transaction ID');
return false;}
            e.preventDefault()
            start_loader()
            $.ajax({
                url:_base_url_+'classes/Master.php?f=place_order',
                method:'POST',
                data: $(this).serialize(),
                dataType:'json',
                error:err=>{
                    console.log(err)
                    alert_toast("An error occurred.",'error')
                    end_loader()
                },
                success:function(resp){
                    if(resp.status == 'success'){
                        location.replace('./')
                    }else{
                        alert_toast("An error occurred.",'error')
                    }
                    end_loader()
                }
            })
        })
    })
</script>