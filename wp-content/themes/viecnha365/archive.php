<?php get_header(); ?>

<div id="content" class="full-width">
    <div class="container">
        <div class="left">
            <h3 class="gap">TIN TỨC MỚI NHẤT</h3>
            <?php if(have_posts()): while (have_posts()): the_post(); ?>
            <div class="post-item">
                <div class="post-img">
                    <a href="<?php the_permalink() ?>"><?php the_post_thumbnail(); ?></a>
                </div>
                <div class="post-info">
                    <h3 class="post-title">
                        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                    </h3>
                    <p class="post-date"><?php the_time('l') ?>, ngày <?php the_time('d - m - y'); ?></p>
                    <p class="post-sum">
                        <?php echo get_the_content(); ?>
                    </p>
                </div>
            </div>
            <?php endwhile; else: ?>
            <h3>Không có bài viết nào</h3>
            <?php endif; ?>
            
        </div>
        <!--/ .left -->
        <div class="right">
            <div class="nav">
                <div class="nav-header">
                    <h3 class="text-orange">HỖ TRỢ TRỰC TUYẾN</h3>
                </div>
                <div class="nav-body">
                    <table>
                        <tr>
                            <td>Ms Trang</td>
                            <td class="table-phone"><img src="<?php bloginfo('template_directory') ?>/assets/img/phone.png"> 01695.959.890</td>
                            <td><a href="#"><img src="<?php bloginfo('template_directory') ?>/assets/img/yahoo.png"></a></td>
                            <td><a href="#"><img src="<?php bloginfo('template_directory') ?>/assets/img/skype.png"></a></td>
                        </tr>
                        <tr>
                            <td>Ms Trang</td>
                            <td class="table-phone"><img src="<?php bloginfo('template_directory') ?>/assets/img/phone.png"> 01695.959.890</td>
                            <td><a href="#"><img src="<?php bloginfo('template_directory') ?>/assets/img/yahoo.png"></a></td>
                            <td><a href="#"><img src="<?php bloginfo('template_directory') ?>/assets/img/skype.png"></a></td>
                        </tr>
                        <tr>
                            <td>Ms Trang</td>
                            <td class="table-phone"><img src="<?php bloginfo('template_directory') ?>/assets/img/phone.png"> 01695.959.890</td>
                            <td><a href="#"><img src="<?php bloginfo('template_directory') ?>/assets/img/yahoo.png"></a></td>
                            <td><a href="#"><img src="<?php bloginfo('template_directory') ?>/assets/img/skype.png"></a></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="nav" id="register">
                <div class="nav-header">
                    <h3 class="text-orange">LIÊN HỆ</h3>
                </div>
                <div class="nav-body">
                    <form>
                        <h4>I. Thông tin cá nhân</h4>
                        <input type="text" name="name" placeholder="Họ và tên">
                        <input type="text" name="address" placeholder="Địa chỉ">
                        <input type="text" name="phone" placeholder="Số điện thoại">
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
                        <textarea rows="5" name="other-request" placeholder="Nội dung các công việc cụ thể"></textarea>
                        <h4>Các yêu cầu khác</h4>
                        <textarea rows="2" name="other-request" placeholder="Các yêu cầu về thời gian, mức giá, nhân viên ..."></textarea>
                        <button type="submit">Gửi</button>
                    </form>
                </div>
            </div>
            <!--/ register form -->
        </div>
        <!--/ .right -->
    </div>
</div>
                
<?php get_footer(); ?>

                