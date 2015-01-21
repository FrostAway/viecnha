<?php get_header(); ?>

<div id="reason" class="full-width">
    <div class="container">
        <?php $page1 = get_page(39); ?>
        <div class="col first">
            <div class="reason-img">
                <img src="<?php bloginfo('template_directory') ?>/assets/img/r1.png">
            </div>
            <div class="reason-text">
                <h1 class="text-uppercase"><?php echo $page1->post_title; ?></h1>
                <p>
                    <?php echo $page1->post_content; ?>
                </p>
            </div>
        </div>
        <?php $page2 = get_page(41); ?>
        <div class="col">
            <div class="reason-img">
                <img src="<?php bloginfo('template_directory') ?>/assets/img/r2.png">
            </div>
            <div class="reason-text">
                <h1 class="text-uppercase"><?php echo $page2->post_title ?></h1>
                <p>
                    <?php echo $page2->post_content; ?>
                </p>
            </div>
        </div>
        <?php $page3 = get_page(43); ?>
        <div class="col first">
            <div class="reason-img">
                <img src="<?php bloginfo('template_directory') ?>/assets/img/r3.png">
            </div>
            <div class="reason-text">
                <h1 class="text-uppercase"><?php echo $page3->post_title ?></h1>
                <p>
                    <?php echo $page3->post_content; ?>
                </p>
            </div>
        </div>
        <?php $page4 = get_page(45); ?>
        <div class="col">
            <div class="reason-img">
                <img src="<?php bloginfo('template_directory') ?>/assets/img/r4.png">
            </div>
            <div class="reason-text">
                <h1 class="text-uppercase"><?php echo $page4->post_title ?></h1>
                <p>
                    <?php echo $page4->post_content; ?>
                </p>
            </div>
        </div>
        <?php wp_reset_postdata(); ?>
    </div>
</div>
<!--/ #reason -->
<div id="body-banner" class="full-width">

</div>
<!--/ #body-banner -->
<div id="content" class="full-width">
    <div class="container">
        <div class="left">
            <div id="progress" class="wrapper">
                <h3 class="text-center text-uppercase text-orange">GIÚP VIỆC CHỈ VỚI 3 BƯỚC ĐƠN GIẢN</h3>
                <p class="text-center gap">
                    Việc nhà 365 cam kết không nhận tiền nếu khách hàng không hài lòng.<br>Nhấc máy lên và gọi cho chúng tôi,
                    yên tâm và thảnh thơi hơn để làm những việc khác.
                </p>
                <div class="col text-center">
                    <img src="<?php bloginfo('template_directory') ?>/assets/img/p1.png">
                    <h4 class="text-uppercase">LIÊN HỆ</h4>
                    <p>Gọi điện hoặc hoàn thành form liên hệ bên cạnh, trung tâm sẽ liên lạc trực tiếp với bạn,
                        trao đổi yêu cầu và chốt giá.</p>
                </div>
                <div class="col text-center">
                    <img src="<?php bloginfo('template_directory') ?>/assets/img/p2.png">
                    <h4 class="text-uppercase">phục vụ</h4>
                    <p>Khi nhân viên đến, khách  hàng sẽ kiểm tra giấy tờ tùy thân và thẻ nhân viên, sau đó mới bàn giao công việc.</p>
                </div>
                <div class="col text-center">
                    <img src="<?php bloginfo('template_directory') ?>/assets/img/p3.png">
                    <h4 class="text-uppercase">thanh toán</h4>
                    <p>Kiểm tra kết quả công việc kỹ càng sau đó thanh toán tiền trực tiếp cho nhân viên.</p>
                </div>
                <div class="progress-read text-right">
                    <a href="#">Xem chi tiết</a>
                </div>
                <div class="next-progress next-1"></div>
                <div class="next-progress next-2"></div>
            </div>
            <!--/ #progress -->
            <div id="services" class="wrapper">
                <h3 class="text-center text-uppercase text-orange">CÁC DỊCH VỤ CỦA CHÚNG TÔI</h3>
                <p class="text-center gap">
                    Các dịch vụ mà Việc nhà 365 cung cấp đều dựa trên cơ sở có kinh nghiệm<br> và đội ngũ nhân viên
                    thông thạo công việc
                </p>

                <?php
                query_posts(array(
                    'post_type' => 'page',
                    'post_parent' => 7,
                    'orderby' => 'menu_order',
                    'order' => 'ASC',
                ));
                ?>
                <?php if (have_posts()): while (have_posts()): the_post(); ?>

                        <div class="col">
                            <?php the_post_thumbnail() ?>
                            <h4><a href="#"><?php the_title(); ?></a></h4>
                            <?php the_content(''); ?>
                        </div>
                    <?php
                    endwhile;
                    wp_reset_query();
                endif;
                ?>
            </div>
            <!--/ #services -->
        </div>
        <!--/ .left -->
            <?php get_sidebar(); ?>
        <!--/ .right -->
    </div>
</div>
<!--/ #content -->
<div id="interview" class="full-width">
    <div class="container">
        <div class="left">
            <h3 class="text-center text-orange">QUY TRÌNH TUYỂN NHÂN VIÊN</h3>
            <p class="text-center gap">Yêu cầu nhân viên có bằng ĐH chính quy, nhân thân rõ ràng, hiền lành trung thực.<br>
                Sức khỏe tốt, có kinh nghiệm trong việc nhà, chăm chỉ, tận tình.</p>
            <div class="col">
                <h4><img src="<?php bloginfo('template_directory') ?>/assets/img/in1.png"> Nộp hồ sơ</h4>
                <p>Ảnh 3x4, photo CMND và thẻ sinh viên. Bản khai lý lịch</p>
            </div>
            <div class="col">
                <h4><img src="<?php bloginfo('template_directory') ?>/assets/img/in2.png"> Phỏng vấn</h4>
                <p>Phỏng vấn, kiểm tra năng lực. Ký hợp đồng nếu đạt yêu cầu</p>
            </div>
            <div class="col">
                <h4><img src="<?php bloginfo('template_directory') ?>/assets/img/in3.png"> Đào tạo</h4>
                <p>Đào tạo, hướng dẫn các quy trình nghiệp vụ, công việc</p>
            </div>
            <div class="col">
                <h4><img src="<?php bloginfo('template_directory') ?>/assets/img/in1.png"> Nhận việc</h4>
                <p>Trở thành NV chính thức, làm việc theo quy định của HĐ</p>
            </div>
        </div>
        <div class="right">
            <a href="<?php echo home_url() ?>/?page_id=68">Đăng ký ngay</a>
        </div>
    </div>
</div>
<!--/ #interview -->
<div id="customer" class="full-width">
    <div class="container">
        <div class="left">
            <div class="wrapper">
                <h3 class="text-orange">NHẬN XÉT CỦA KHÁCH HÀNG</h3>
                <p class="gap">
                    100% khách hàng hài lòng với dịch vụ của chúng tôi, 95% nói rằng họ sẽ gọi lại khi cần, 80%
                    hiện tại là khách hàng thường xuyên của chúng tôi
                </p>
                <div class="customer-slider">
                    <div class="slider-content cycle-slideshow"
                         data-cycle-fx="scrollHorz"
                         data-cycle-timeout="4000"
                         data-cycle-slides="> .slider-item"
                         data-cycle-prev="#prev"
                         data-cycle-next="#next">
                        <div class="slider-item">
                            <div class="customer-img">
                                <img src="<?php bloginfo('template_directory') ?>/assets/img/customer.png">
                            </div>
                            <div class="customer-comment">
                                <h4>Chị Nguyễn Thị Lan</h4>
                                <p>"Nhanh, dịch vụ rất là tốt. Mức giá này so với ba ngày tết chẳng là gì. Mấy đứa nhân viên rất là
                                    nhiệt tình và vui vẻ. Tết này đỡ mệt hơn rất là nhiều rồi!"</p>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="customer-img">
                                <img src="<?php bloginfo('template_directory') ?>/assets/img/customer.png">
                            </div>
                            <div class="customer-comment">
                                <h4>Chị Nguyễn Thúy Nga</h4>
                                <p>"Nhanh, dịch vụ rất là tốt. Mức giá này so với ba ngày tết chẳng là gì. Mấy đứa nhân viên rất là
                                    nhiệt tình và vui vẻ. Tết này đỡ mệt hơn rất là nhiều rồi!"</p>
                            </div>
                        </div>
                    </div>
                    <div id="prev" class="slider-control control-left"><i class="fa fa-angle-left"></i></div>
                    <div id="next" class="slider-control control-right"><i class="fa fa-angle-right"></i></div>
                </div>
            </div>
        </div>
        <div class="right">
            <img class="first" src="<?php bloginfo('template_directory') ?>/assets/img/partner.jpg">
            <img src="<?php bloginfo('template_directory') ?>/assets/img/partner.jpg">
            <img class="first" src="<?php bloginfo('template_directory') ?>/assets/img/partner.jpg">
            <img src="<?php bloginfo('template_directory') ?>/assets/img/partner.jpg">
        </div>
    </div>
</div>
<!--/ #customer -->

<?php get_footer(); ?>