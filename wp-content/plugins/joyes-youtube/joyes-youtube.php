<?php

/*

Plugin Name: JOYES Youtube
Description: Affiche une vidéo en 16/9 responsive provenant de youtube ex: [youtube]a4boq5-cZgA[/youtube]
Author: Maxime Joyes
Version: 1.0

*/

/* 1. Déclarer une fonction de création de Shortcode */
function ajout_shortcode_JOYESYT(){
    add_shortcode('youtube', 'affichage_yt');
}

/* 2. Appeler cette fonction au chargement de WP */
add_action('init', 'ajout_shortcode_JOYESYT');


/* 3. Associer le shortcode à une fonction */
function affichage_yt( $params = array(), $content=null )
{
    $format = '16by9';
    if ( isset($params['format']) )
    {
        $format = $params['format'];
    }
    $html = '<div class="embed-responsive embed-responsive-' . $format . '"><iframe class="embed-responsive-item" src="https://www.youtube.com/embed/' . $content . '" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>';

    return $html;
}

?>