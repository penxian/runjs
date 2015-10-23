<?php
/**
* 
*/
class UserCtr extends MpController{
	public function doNames(){
		$data= $this->db->limit(5)->get('customers')->result_array();
		echo json_encode($data);
	}
}