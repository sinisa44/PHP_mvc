<?php
class Bootstrap{
	private $controller;
	private $action;
	private $request;

	public function __construct($request){
		//prima se GET promenljiva
		$this->request = $request;

		//proverava se da li je $_GET['controller'] prazan
		//ako jeste onda se stavlja podrazumevana vrednost 'home'
		if( $this->request['Controller'] == ""){
			$this->controller = 'home';

			//ako nije
		} else {
			$this->controller = $this->request['Controller'];
		}
		//proverava se da li je metoda prazna
		//ako jeste onda je podrazuveno 'index'
		if($this->request['action'] == ""){
			$this->action = 'index';
		} else {
			$this->action = $this->request['action'];
		}
	}

	public function createController(){
		// Check Class
		if(class_exists($this->controller)){
			$parents = class_parents($this->controller);
			// Check Extend
			if(in_array("Controller", $parents)){
				if(method_exists($this->controller, $this->action)){
					return new $this->controller($this->action, $this->request);
				} else {
					// Method Does Not Exist
					echo '<h1>Method does not exist</h1>';
					return;
				}
			} else {
				// Base Controller Does Not Exist
				echo '<h1>Base controller not found</h1>';
				return;
			}
		} else {
			// Controller Class Does Not Exist
			echo '<h1>Controller class does not exist</h1>';
			return;
		}
	}
}
