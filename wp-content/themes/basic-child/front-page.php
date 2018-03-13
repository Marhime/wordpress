<?php
get_header(); // charger le header


if ( have_posts() ): // si j'ai des posts

    while ( have_posts() ): the_post(); // je charge les infos du post

    /* the_title(); <= echo get_the_title(); */

    get_template_part('content','zone1');
    get_template_part('content','zone2');
    get_template_part('content','zone3');
    get_template_part('content','zone4');
    get_template_part('content','zone5');
    get_template_part('content','zone6');


    endwhile;

endif;


get_footer(); // charger le footer