<?php

/*

Ajouter une feuille CSS
Ajouter un script JS

Ajouter une Zone de menu perso
Ajouter une Zone de widgets perso

*/

// 1-2 Ajouter feuilles CSS et scripts JS
// hook => wp_enqueue_scripts

add_action('wp_enqueue_scripts', 'custom_style_scripts');
// add_action('hook', 'nom_de_la_fonction_perso');

function custom_style_scripts(){


    // Feuille CSS
    wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css'); // feuille du theme parent, si on fait un theme enfant
    wp_enqueue_style('child-style', get_stylesheet_directory_uri() . '/style.css'); // feuille du theme activé

    // Scripts
    wp_enqueue_script('jquery-cdn', 'https//code.jquery.com/jquery-3.3.1.min.js');
    /* si vous aviez un script js perso dans le rep JS du theme :
    wp_enqueue_script('perso-js', get_stylesheet_directory_uri() . '/js/fichier_perso.js');
    */

}

// 3. Menu Perso
if ( function_exists('register_nav_menus') ){

    register_nav_menus( array(
                'menufooter' => 'Menu du bas'
    )
    );

}

// 4. Zone à widgets perso
if ( function_exists('register_sidebar') ){

    register_sidebar( array(
        'name' => 'Ma zone à Widgets Perso',
        'id'   => 'sidebar-perso',
        'before_widget' => '<div class="video-zone6">', // ce qui est avant 
        'after_widget' => '</div>'
    ));
}