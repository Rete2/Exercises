<?php
// Connect to the database
$dbconn = pg_connect("host=localhost dbname=restaurants_in_berlin user=postgres password=postgres")
    or die('Verbindungsaufbau fehlgeschlagen: ' . pg_last_error());

$name = strip_tags($_POST["Name"]);
$type = strip_tags($_POST["Food"]);
$lat = strip_tags($_POST["Lat"]);
$lon = strip_tags($_POST["Lon"]);
$point = "POINT(" . $lat . " " . $lon . ")";

// SQL-Query
$query = "INSERT INTO restaurants(name, type_of_food, geom) VALUES ($1, $2, ST_PointFromText($3, 4326));";
$params = array($name, $type, $point);
pg_query_params($dbconn, $query, $params);

// Close connection
pg_close($dbconn);
?>