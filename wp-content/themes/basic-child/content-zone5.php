<?php

$vignettes = array();
$vignettes[] = get_field('z5_vignette_1');
$vignettes[] = get_field('z5_vignette_2');
$vignettes[] = get_field('z5_vignette_3');
$vignettes[] = get_field('z5_vignette_4');

?>

<div class="container">
    <div class="row">
        <?php
        foreach( $vignettes as $indice => $valeur ):
            ?>
            <div class="col-md-3">
                <img src="<?= $valeur['url'] ?>" alt="<?= $valeur['alt'] ?>" class="img-fluid rounded-circle">
                <div class="caption">
                    <p class="text-center"><?= $valeur['caption'] ?></p>
                </div>
            </div>
            <?php
        endforeach;
        ?>
    </div>
</div>