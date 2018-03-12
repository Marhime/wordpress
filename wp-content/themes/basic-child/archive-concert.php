<?php

get_header();

if ( have_posts() ):

    while( have_posts() ) : the_post();
    
        $photo = get_field('photo');
        $date_heure = get_field('date_heure');

    ?>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="<?= $photo['url'] ?>" alt="<?= $photo['alt'] ?>" class="img-fluid">
                </div>
                <div class="col-md-8">
                    <a href="<?= get_the_permalink() ?>"><h3><?= get_the_title() ?></h3></a>
                    <p><?= $date_heure ?></p>
                    <p><?= get_the_excerpt() ?> <a style="text-decoration: none;" href="<?= get_the_permalink() ?>">En savoir plus </a></p>
                </div>
            </div>
        </div>

    <?php
    endwhile;

endif;

get_footer();

