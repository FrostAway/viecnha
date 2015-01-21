<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>" />
	
	<?php if (is_search()) { ?>
	   <meta name="robots" content="noindex, nofollow" /> 
	<?php } ?>

	<title>
		   <?php
		      if (function_exists('is_tag') && is_tag()) {
		         single_tag_title("Tag Archive for &quot;"); echo '&quot; - '; }
		      elseif (is_archive()) {
		         wp_title(''); echo ' Archive - '; }
		      elseif (is_search()) {
		         echo 'Search for &quot;'.wp_specialchars($s).'&quot; - '; }
		      elseif (!(is_404()) && (is_single()) || (is_page())) {
		         wp_title(''); echo ' - '; }
		      elseif (is_404()) {
		         echo 'Not Found - '; }
		      if (is_home()) {
		         bloginfo('name'); echo ' - '; bloginfo('description'); }
		      else {
		          bloginfo('name'); }
		      if ($paged>1) {
		         echo ' - page '. $paged; }
		   ?>
	</title>
	
	<link rel="shortcut icon" href="/favicon.ico">
	
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
        <link rel="stylesheet" href="<?php bloginfo('template_directory') ?>/assets/css/font-awesome.min.css">
	
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
        
	<?php if ( is_singular() ) wp_enqueue_script('comment-reply'); ?>

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=1395390994084918&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    
    <div id="header" class="full-width">
    <div class="logo">
        <a href="<?php echo home_url(); ?>"><img src="<?php bloginfo('template_directory') ?>/assets/img/logo.png"></a>
    </div>
    <div class="slogan">
        <img src="<?php bloginfo('template_directory') ?>/assets/img/slogan.png">
    </div>
    <div class="hot-line">
        <small>Hot line:</small>
        01695.959.890
    </div>
    <div class="contact-bar">
        <div class="contact-icon">
            <!--<a href="#"><i class="fa fa-yahoo"></i></a>-->
            <!--<a href="#"><i class="fa fa-skype"></i></a>-->
            <!--<a href="#"><i class="fa fa-facebook"></i></a>-->
            <!--<a href="#"><i class="fa fa-google-plus"></i></a>-->
        </div>
    </div>
</div>
<!--/ #header -->
<div id="menu" class="full-width">
    <div class="container">

        <?php wp_nav_menu(array('container'=>'')); ?>
        <script>
            jQuery(document).ready(function(){
                jQuery('#menu-main-menu').fadeIn(300);
               jQuery('.menu .menu-item-has-children').addClass('dropdown');
               jQuery('.menu .sub-menu').addClass('dropdown-menu');
            });
        </script>
        <form method="get" action="#">
            <input type="text" name="key" placeholder="Tìm kiếm">
            <button type="submit"><i class="fa fa-search"></i> </button>
        </form>
    </div>
</div>
<!--/ #menu -->
<div id="slider" class="full-width">
    <a href="#">
        <img src="<?php bloginfo('template_directory') ?>/assets/img/slider.png">
    </a>
</div>
<!--/ #slider -->
	