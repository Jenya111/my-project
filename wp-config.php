<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'my-project');

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
define('AUTH_KEY',         'U=47ba`Z?slcv0PdQV^R..XLrcp;wg90|FwU~{3Zo:.bCjt%E<!CUEf-Yk*w!yOp');
define('SECURE_AUTH_KEY',  ' /X0F>5[4fctpw6&k6>zxr56@Plg9pH!;3w5aCq:BHmLIC[I8jGq:>lji)&[W@Pi');
define('LOGGED_IN_KEY',    '(r16OI81iA7Vtx[ K}_2/UzL,ZHf1##M|EHQ.,1Z6u}q2794n~HJ;%1Wij(QS}}7');
define('NONCE_KEY',        'kVy,MR>AnUD1{X:7Cr3SlP_c]p{HQ3IN7t>?g5O~Q+dndG|5=<o}juxUzJV#oz @');
define('AUTH_SALT',        'EaOrR,hHwMsY6>p[B3a{0s5GMh:G2c_ {b?C#Zlh?*A)X|!?q2~cS8C[1LrQksp!');
define('SECURE_AUTH_SALT', 'y{;6G[:{%=9wiJ#__eU!)XzBQOCV8gHZPzpz*m]tQ}uN0Qke|Ipz`}zFkRAJChd$');
define('LOGGED_IN_SALT',   'tLl;M4{.kMvH9#9CCP39*KwYXd5]{n(fC,b0~(uAyrMt/U#a!y&I_-+;;_JEn[bE');
define('NONCE_SALT',       '`Cr8PXm+pFZlmI#-Tl-_uoKBC!NidH)?X(F3p$kQ+]OdA:p%fUI7zXKTw~(?{X}d');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
