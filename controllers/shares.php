<?php
class Shares extends Controller{
	protected function Index(){
		$viewmodel = new Share();
		$this->returnView($viewmodel->Index(), true);
	}

	protected function add(){
		if(!isset($_SESSION['is_logged_in'])){
			header('Location:'.ROOT_URL.'shares');
		}
		$viewmodel = new Share();
		$this->returnView($viewmodel->add(), true);
	}
}