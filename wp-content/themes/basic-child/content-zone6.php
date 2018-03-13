<?php

$texte_zone6 = get_field('z6_texte');

?>

<div class="container">
    <div class="row">
        <div class="col-md-6 text-justify"><p><?= $texte_zone6 ?></p></div>
        <div class="col-md-6 text-justify">
            <?php
            dynamic_sidebar('sidebar-perso');
            ?>
        </div>
    </div>
</div>