<?php

$slides = array();
$slides[]=get_field('z1_slide_1');
$slides[]=get_field('z1_slide_2');
$slides[]=get_field('z1_slide_3');

/*
foreach ( $slides as $indice => $valeur )
{
    echo $indice . ' - ' . $valeur['url'] . '<br>';
}
*/
?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="monslider" class="carousel slide" data-ride="carousel">

                <!-- INDICATEURS -->
                <ol class="carousel-indicators">
                    <?php
                    foreach ( $slides as $indice => $valeur ):

                        $class_active='';
                        if( $indice == 0 ) $class_active='class="active"';
                        ?>
                        <li data-target="#monslider" data-slide-to="<?= $indice ?>" <?= $class_active ?>></li>
                        <?php

                    endforeach;
                    ?>
                </ol>
                <!-- Images -->
                <div class="carousel-inner" role="listbox">
                    <?php
                        foreach ( $slides as $indice => $valeur ) :
                            $slide_active = '';
                            if ( $indice == 0 ) $slide_active="active";
                            ?>
                            <div class="carousel-item <?= $slide_active ?>">
                                <img class="d-block img-fluid" src="<?= $valeur['url'] ?>" alt="<?= $valeur['alt'] ?>">
                            </div>
                            <?php

                        endforeach;
                    ?>
                </div>

                <!-- flêches -->
                <a class="carousel-control-prev" href="#monslider" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Précédent</span>
                </a>
                <a class="carousel-control-next" href="#monslider" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Suivante</span>
                </a>

            </div>
        </div>
    </div>
</div>