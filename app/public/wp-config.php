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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define('AUTH_KEY',         'DGtTYlsClrXHy3RQxG7fSpYSQ1L1uLKJ8bd8fByrKUKDh5UwlBak6tTa6MxrlBqxI+uNNaHdIVNrz07x8mDtow==');
define('SECURE_AUTH_KEY',  'SXjkv97T4sHX5vlWP8oI19ID6R5HBlXdDER5UL5oFnbVvCTNulZi84JztSnYims5U+tB2l/zoAox0JfRcxSvUQ==');
define('LOGGED_IN_KEY',    '4ovA2vld0ppqA0K0P8+5RFynKBYRW/s32TbAAzLVmDU2QFgpa72GltrdtketNUrXn/QZ584+q4S4BdIIiCBhUw==');
define('NONCE_KEY',        '8f5PN2M77FsiN0lQwsQ7ozHbiDkyo4S0FoMwXa1APkHdvIZ0XP+iUvcgZkoIrHOngujHA2UcEjCB/Q2hsrJ7kg==');
define('AUTH_SALT',        'uFvnQwmEmj8y/GgvAiX9vAUfhexojJjLiOv7LPHZ/r+qu39pV1NF1pY/ohl41BTJlb98YhzWcJefs9UX/6xlMg==');
define('SECURE_AUTH_SALT', 'HbtQ5b1hTrHs8J7og0Ctdqin2z+9KR4kQZTuv+uopcsTeLUDvSw5havjfblRZU0IWUQRXxWogiWEgiwCl8tjKg==');
define('LOGGED_IN_SALT',   'coeyx68w7WRPAGZCHVJr1el7tQImSdbmfJavCFL3v/MZjC9tMw0coKRfL7T03ha37oqCjjB+vJsmm9YOxt15tw==');
define('NONCE_SALT',       'UERYTtaLxsC+kF5ZDh/PYDb/WLz46NeuQsLLjwvJu8830Ei1ecIwjNwygKE5DTNdGw+0btiQn/94/W4Jilkizg==');


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
