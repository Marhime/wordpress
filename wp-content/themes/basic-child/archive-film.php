<?php

get_header();

if ( have_posts() ):

    while( have_posts() ) : the_post();
    
        $affiche = get_field('photo');
        $realisateur = get_field('realisateur');
        $acteurs = get_field('acteurs');

    ?>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="<?= $affiche['url'] ?>" alt="<?= $affiche['alt'] ?>" class="img-fluid">
                </div>
                <div class="col-md-9">
                    <a href="<?= get_the_permalink() ?>"><h3><?= get_the_title() ?></h3></a>
                    <p><?= $acteurs ?></p>
                    <p><?= $realisateur ?></p>
                    <p><?= get_the_excerpt() ?> <a style="text-decoration: none;" href="<?= get_the_permalink() ?>">Voir la bande annonce</a></p>
                </div>
            </div>
        </div>

    <?php
    endwhile;

endif;

get_footer();

