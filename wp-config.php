<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'biatch');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '3s/hs:2`Q~gDM_F{I C(N8qdYqb6d:pGZFF|3!5L17Ylvr55%jM3LN}R[@ns{M7i');
define('SECURE_AUTH_KEY',  'mbFXX4RvC@pJW+QlAc&{}%}-~42m%kTfN#bVl9q&EFlUlTod7%dhOk0dHff29>2 ');
define('LOGGED_IN_KEY',    'mVS).4C>ZO0zHTX4l-9O^Lgp{(NQ}>V$;8Lo@Ap^C]w,O|2Z}J*;QPAu O-#:61#');
define('NONCE_KEY',        '#({3)|RF..kSk#bJcPa/4%,FSjweZD>a-`% }0Il}Sgu2}{vB#&x$T,}Z^dUN#T8');
define('AUTH_SALT',        '=>E(~UI<&e^fISX3_0bhW^,C,Yp2,3W~}qFCXS&v=(w=/X7 |Qj|_Vsx!5L*iZO3');
define('SECURE_AUTH_SALT', 'Fg9Vp$PI2{yxOQ`E.7o)8j2[K!mhkGXo`&x+vy6RF,S&|BDRQ*.mZ*a/%15wFM&F');
define('LOGGED_IN_SALT',   'ljaW2Rue<=^9V!8K_[QNaL{Qk&EpPB`8MMt*^iIka1-v:YoZ3EyL7B6N.+rnoA=A');
define('NONCE_SALT',       '>Hqm5K9VYIYC0, M$JX$:}W9;)T&9#t${z0[~2QY&ioT7 QV?5KE#?lxP6ooFeV*');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'monsite_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');