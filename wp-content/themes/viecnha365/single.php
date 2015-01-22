<?php get_header(); ?>

<div id="content" class="full-width">
    <div class="container">
        <div class="left">
            <?php if (have_posts()): while (have_posts()): the_post(); ?>
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
                <?php endwhile;
            else: ?>
                <h3>Không có bài viết nào</h3>
            <?php endif; ?>

        </div>
        <!--/ .left -->
            <?php get_sidebar(); ?>
        <!--/ .right -->
    </div>
</div>

<?php get_footer(); ?>

