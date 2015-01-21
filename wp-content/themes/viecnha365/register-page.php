<?php
/*
 * Template Name: Register Form
 */
?>

<?php get_header(); ?>
<div id="content" class="full-width">
    <div class="container">
        <div class="nav" id="register" style="width: 40%;">
            <div class="nav-header">
                <h3 class="text-orange">ĐĂNG KÝ</h3>
            </div>
            <div class="nav-body">
                <form method="post" action="">
                    <h4>I. Thông tin cá nhân</h4>
                    <input type="text" name="contact-name" placeholder="Họ và tên">
                    <input type="text" name="contact-address" placeholder="Địa chỉ">
                    <input type="text" name="contact-phone" placeholder="Số điện thoại">
                    <h4>II. Loại hình công việc</h4>
                        <div class="service-checkbox">
                            <input type="checkbox"> Dọn nhà đón tết
                        </div>
                        <div class="service-checkbox">
                            <input type="checkbox"> Giúp việc theo giờ
                        </div>
                        <div class="service-checkbox">
                            <input type="checkbox"> Vệ sinh công nghiệp
                        </div>
                        <div class="service-checkbox">
                            <input type="checkbox"> Tạp vụ văn phòng
                        </div>
                        <div class="service-checkbox">
                            <input type="checkbox"> Chuyển nhà trọn gói
                        </div>
                        <div class="service-checkbox">
                            <input type="checkbox"> Sửa máy tính
                        </div>
                    <h4>Nội dung công việc</h4>
                    <textarea rows="5" name="contact-content" placeholder="Nội dung các công việc cụ thể"></textarea>
                    <h4>Các yêu cầu khác</h4>
                    <textarea rows="2" name="contact-other" placeholder="Các yêu cầu về thời gian, mức giá, nhân viên ..."></textarea>
                    <button type="submit" name="contact-submit">Gửi</button>
                </form>
            </div>
        </div>
        <!--/ register form -->
    </div>
</div>
<?php get_footer(); ?>
