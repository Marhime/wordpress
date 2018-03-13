<?php

get_header();

if ( have_posts() ):

    while ( have_posts() ) : the_post();

    $affiche = get_field('photo');
    $realisateur = get_field('realisateur');
    $acteur = get_field('acteurs');
    $bande_annonce = get_field('video');

?>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <img src="<?= $affiche['url'] ?>" alt="<?= $affiche['alt'] ?>" class="img-fluid">
        </div>
        <div class="col-md-9">
            <h2><?= get_the_title() ?></h2>
            <p>Réalisateur : <?= $realisateur ?></p>
            <p>Acteurs principaux : <?= $acteur ?></p>
            <p><?= get_the_content() ?></p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center">Bande annonce :</h2>
            <?= do_shortcode('[youtube]' . $bande_annonce . '[/youtube]'); ?>
        </div>
    </div>
</div>

<?php
    endwhile;

endif;

get_footer();

