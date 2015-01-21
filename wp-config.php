<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'viecnha_db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'WP3@H (?ARgK0+A!C3qT7@WmPZ*<.=Le;=[tx5;oP{_?yYM@ckt_%gWL#hh&G<#>');
define('SECURE_AUTH_KEY',  'k}DEte-e,7|:b+l)I[)-Eb7Iz,Jr|1x{9`}/[P%^ kmAbBzB0*H+0V-,?6?a?)v]');
define('LOGGED_IN_KEY',    'cb%+>4XJ7g*Xrk.TD +~>-]$ce-TD_Vl2@UgYi$^`*D2N~X)P`U0G=.1Ck7$p,T@');
define('NONCE_KEY',        '{-5w&3IDV|G Jb3iq-#A)C+i`+fRbvz!}]((,;aLsVm3An8qQK0Leh=u;2Q*-n)7');
define('AUTH_SALT',        'H7D||n!UGTQ-,@nSHZ.u.d: [hL{.dX^17~HYX4|50Zv#X?q#R+]k&knk+}+SNSF');
define('SECURE_AUTH_SALT', 'DoO=/>F |q1)#^-b`qOJ+{xn(0FwI. PD|(R4%M^|v_8m9H>>`a9H`C^8)dk~51`');
define('LOGGED_IN_SALT',   '+9d6};?+L=B]96`4]v-_hp0E7Bp<dH)```D?+Jkr?1dQ>9{}`oDLz|-ouCh(3W.4');
define('NONCE_SALT',       ' #$Fu.JW-bMoWWsS$lh+K[XI&*WQZ2|.Nc_lCEfw!3Xs*<N^*+mz?cb,X2a|a$;e');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
