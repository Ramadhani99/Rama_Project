<?php

/**
 * These frontend controllers require the user to be logged in
 */
$router->group([
	'prefix' => 'person', 
	'namespace' => 'Person',
	'middleware' => 'access.routeNeedsPermission:person-management' 
], function () use ($router)
{
	// require(__DIR__ . "/Person/Version1.php");
	require(__DIR__ . "/Person/Version2.php");
});