<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'alabalet' );

/** Database password */
define( 'DB_PASSWORD', 'gigachad' );

/** Database hostname */
define( 'DB_HOST', 'mariadb.srcs_default' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'B]UdDL_ok8Hey*~OPR79l.8(6~b-:T>A B/?F7$9TLP{e1?3F>c-s:OO)$6@sSY!');
define('SECURE_AUTH_KEY',  '[q<pL~wgg>|WHv|xHP(yQr45;/K^DJ9$_s%nGl#xl+bp&WyQ3h)~tDP9d-TpV2CI');
define('LOGGED_IN_KEY',    '*ZLs2?zhI4]-WQBB^-eP[r?1SWm0&;u.EY-kpyX}s|3<huHnZ+c,hEx +zwTn]vI');
define('NONCE_KEY',        'Xxi3tvI`+/~! P$/2;fK0WA@GLw:#{E/:!gI#z<&1QuL=ti% &>}<O>&X+;+1l9k');
define('AUTH_SALT',        'z|i~x5wC7vMgzPez1dOdDp*.Wbb!@;$ <V/V@L@}0y-XED{J,8!boa)3F+wyHwKc');
define('SECURE_AUTH_SALT', 'BBY<OXmH+4k%fyBh``-gh*>+g+XX703/I$VZ/k:6%Z]s`f4Xu~da-e.C/xOm*M~e');
define('LOGGED_IN_SALT',   'dw1zv- bY{-f.++C_kAP8~8dE%FBz.ge!<NNukZmWhH.!8S>BfZoOHeT#5E4^{fe');
define('NONCE_SALT',       'Fs6qpqYZ.:!]cR<m/-BUb}]ipt!X-z/yRQQ-R|Dp7Mg8ErJ>fE21F>HID++lb+eZ');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';