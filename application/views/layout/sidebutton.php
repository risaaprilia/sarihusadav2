<div class="row">
    <div class="col-md-12">
        <!-- start of left button-->
        <div class="col-md-2 sidebutton_button" id="my_styles">
            <li><a><button class="btn btn-md btn-blue" >OVERVIEW</button></a></li>
            <li><a><button class="btn btn-md btn-blue" >OPERATION</button></a></li>
            <li><a><button class="btn btn-md btn-blue" >SETTING</button></a></li>
            <li><a><button class="btn btn-md btn-blue">REPORT</button></a></li>
            <li><a><button class="btn btn-md btn-blue">LOG</button></a></li>
        </div>
        <div class="col-md-1"></div>
        <!--End of Left Button-->

<script>
    jQuery("#my_styles .btn").click(function(){
        jQuery("#my_styles .btn").removeClass('active');
        jQuery(this).toggleClass('active');
    });


</script>