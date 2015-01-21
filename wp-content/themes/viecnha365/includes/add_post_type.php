<?php

function create_post_type_contact() {
    register_post_type('contact', array(
        'labels' => array(
            'name' => 'Liên hệ',
            'singular_name' => 'Liên hệ',
            'add_new' => 'Liên hệ mới',
            'all_items' => 'Tất cả Liên hệ',
            'new_item_name' => 'Liên hệ mới',
            'view_item' => 'Xem Liên hệ',
            'menu_name' => 'Liên hệ',
            'add_new_item' => 'Liên hệ mới',
        ),
        'description' => 'Liên hệ khách hàng',
        'supports' => array(
            'title', 'excerpt', 'thumbnail', 'revisions',
        ),
        'hierarchical' => false,
        'has_archive' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => false,
        'show_in_admin_bar' => false,
        'menu_position' => 7,
        'menu_icon' => 'dashicons-redo',
        'capability_type' => 'post'
    ));
}

add_action('init', create_post_type_contact());
add_action('add_meta_boxes', 'add_my_contact_field');

function add_my_contact_field() {
    add_meta_box('contact-box', 'Contact Information', 'show_contact_box', 'contact', 'normal', 'low', array());
}

function show_contact_box() {
    $contact_fields = array(
        array(
            'type' => 'text',
            'name' => 'contact-name',
            'lable' => 'Họ tên',
            'size' => '60'
        ),
        array(
            'type' => 'text',
            'name' => 'contact-phone',
            'lable' => 'Số ĐT',
            'size' => '60'
        ),
        array(
            'type' => 'text',
            'name' => 'contact-address',
            'lable' => 'Địa chỉ',
            'size' => '60'
        ),
//        array(
//            'type' => 'text',
//            'name' => 'contact-other',
//            'lable' => 'Email',
//            'size' => '60'
//        )
        array(
            'type' => 'text',
            'name' => 'contact-other',
            'lable' => 'Yêu cầu khác',
            'size' => '60'
        ),
    );
    global $post;
    $contacts = get_post_custom($post->ID);
    ?>
    <table>
        <?php foreach ($contact_fields as $box) { ?>
            <?php
            switch ($box['type']) {
                case 'text':
                    ?>
                    <tr>
                        <td><label><?php echo $box['lable'] ?>: </label></td>
                        <td><input size="<?= $box['size'] ?>" type="text" name="<?php echo $box['name'] ?>" value="<?php if (isset($contacts)) echo $contacts[$box['name']][0] ?>" /></td>
                    </tr>
                    <?php
                    break;
                case 'textarea':
                    ?>
                    <tr>
                        <td><label><?php echo $box['lable'] ?>: </label></td>
                        <td><textarea name="<?php echo $box['name'] ?>" rows="4" cols="80"  placeholder="content"><?php if (isset($contacts)) echo $contacts[$box['name']][0] ?></textarea></td>
                    </tr>
                    <?php
                    break;
                default:
                    break;
            }
            ?>

        <?php } ?>
    </table>
    <?php
}

//save contact
add_action('save_post', 'update_my_contact');

function update_my_contact($post_id) {
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    if (!current_user_can('edit_post', $post_id)) {
        return;
    }
    if (isset($_REQUEST['post_type']) && $_REQUEST['post_type'] == 'contact') {
        update_post_meta($post_id, 'contact-name', $_POST['contact-name']);
        update_post_meta($post_id, 'contact-phone', $_POST['contact-phone']);
        update_post_meta($post_id, 'contact-address', $_POST['contact-address']);
        update_post_meta($post_id, 'contact-other', $_POST['contact-other']);
    } else {
        delete_post_meta($post_id, 'contact-name');
        delete_post_meta($post_id, 'contact-phone');
        delete_post_meta($post_id, 'contact-address');
        delete_post_meta($post_id, 'contact-other');
    }
    if (isset($_POST['contact-submit'])) {
        update_post_meta($post_id, 'contact-name', $_POST['contact-name']);
        update_post_meta($post_id, 'contact-phone', $_POST['contact-phone']);
        update_post_meta($post_id, 'contact-address', $_POST['contact-address']);
        update_post_meta($post_id, 'contact-other', $_POST['contact-other']);
    }
}

// add contact info from frontend
if (isset($_POST['contact-submit'])) {

    $order = array(
        'post_title' => 'contact_' . rand(100, 999),
        'post_excerpt' => $_POST['contact-content'],
        'post_status' => 'pending',
        'post_type' => 'contact',
    );

    $post_id = wp_insert_post($order);
    add_post_meta($post_id, 'contact-name', $_POST['contact-name'], true);
    add_post_meta($post_id, 'contact-other', $_POST['contact-other'], true);
    add_post_meta($post_id, 'contact-phone', $_POST['contact-phone'], true);
    add_post_meta($post_id, 'contact-address', $_POST['contact-address'], true);
//        require_once (ABSPATH.'wp-admin/includes/admin.php');
//        $thumb_id = media_handle_upload('thumbnail', $post_id);
//        add_post_meta($post_id, '_thumbnail_id', $thumb_id, true);
    wp_redirect(home_url());
    die();
}


