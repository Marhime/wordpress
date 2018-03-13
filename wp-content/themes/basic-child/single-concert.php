<?php

get_header();

if ( have_posts() ):

    while ( have_posts() ) : the_post();

    $photo = get_field('photo');
    $date_heure = get_field('date_heure');
    $salle = get_field('salle');
    $adresse = get_field('adresse');
    $prix = get_field('prix');

    $info_prix = get_field_object('prix');
    $devise = $info_prix['append'];
?>

<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <img src="<?= $photo['url'] ?>" alt="<?= $photo['alt'] ?>" class="img-fluid">

        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2><?= get_the_title() ?></h2>
            <p><?= $date_heure ?></p>
            <p><?= $salle ?></p>
            <p><?= $prix . '' . $devise ?></p>
        </div>
        <div class="col-md-4">
            <p><?= $adresse ?></p>
        </div>
        <div class="col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-md-12 text-justify">
            <p><?= get_the_content() ?></p>
        </div>
    </div>
</div>

<?php
    endwhile;

endif;

get_footer();

