<div id="footer" class="full-width">
    <div class="container">
        <div class="col">
            <h3 class="gap">Giúp việc 365</h3>
            <p><i class="fa fa-fw fa-user"></i> Công ty TNHH Trường Sinh</p>
            <p><i class="fa fa-fw fa-dollar"></i> Mã số thuế: 093334333</p>
            <p><i class="fa fa-fw fa-home"></i> Địa chỉ văn phòng:<br>P1603 chung cư A2 ngõ 229 phố Vọng</p>
            <p><i class="fa fa-fw fa-phone"></i> Điện thoại: 01695.959.890</p>
            <p><i class="fa fa-fw fa-envelope"></i> Email: giupviec365@gmail.com</p>
        </div>
        <div class="col">
            <h3 class="gap">Facebook</h3>
            
            <div class="fb-like-box" data-href="https://www.facebook.com/FacebookDevelopers" data-height="186" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="false" data-show-border="true"></div>
        </div>
        <div class="col">
            <h3 class="gap">Bản đồ</h3>
            <div id="google-maps"></div>
        </div>
    </div>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var myLatlng = new google.maps.LatLng(20.99549, 105.844354);
            var mapOptions = {
                zoom: 15,
                center: myLatlng
            };

            var map = new google.maps.Map(document.getElementById('google-maps'), mapOptions);

            var contentString = '<p class="location">P1603 chung cư A2, ngõ 229 phố Vọng,<br /> Hai Bà Trưng, Hà Nội</p>';

            var infowindow = new google.maps.InfoWindow({
                content: contentString,
                width: 200
            });

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Allblue Team'
            });
            infowindow.open(map, marker);
        }

        google.maps.event.addDomListener(window, 'load', initialize);


    </script>
    <style>
        .location{
            color: #000;
        }
    </style>
    <div style="" class="footer-foot"></div>
</div>

<script src="<?php bloginfo('template_directory') ?>/assets/js/jquery.js"></script>
<script src="<?php bloginfo('template_directory') ?>/assets/js/main.js"></script>
<script src="<?php bloginfo('template_directory') ?>/assets/js/cycle2.js"></script>
<?php wp_footer(); ?>
</body>
</html>



