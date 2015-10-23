<?php
class User extends MpModel{
   public function getNameById($id){
       return $id.':Jhon';
   }

   public function getMyName($id){
   		return $id."peng";
   }
}
