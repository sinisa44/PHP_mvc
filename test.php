<?php
/*class foo { }
class bar extends foo {}

print_r(class_parents(new bar));

// since PHP 5.1.0 you may also specify the parameter as a string
print_r(class_parents('bar'));

/*
function __autoload($class_name) {
	require_once $class_name . '.php';
}

// use __autoload to load the 'not_loaded' class
print_r(class_parents('not_loaded', true));*/

$os = array("Mac", "NT", "Irix", "Linux");
if (in_array("Irix", $os)) {
	echo "Got Irix";
}
if (in_array("mac", $os)) {
	echo "Got mac";
}
print_r($_ENV['CONTENT_LENGHT']);