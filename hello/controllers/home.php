<?php
class Home extends MpController {
      public function doHello($name=''){
          echo 'Hello,world!';
      }
      public function doHello2($name=''){
          echo 'Hello,'.$name.'!';
      }
      public function doHello3($id=''){
          $this->model('User');
          echo $this->model->user->getMyName($id) . '!';
      }
      public function doHello4() {
        $data=array('name'=>'Jhon');
        $this->view('welcome',$data);
      }
      public function doHello5() {
        $woniu=new Woniu();
        $woniu->say();
      }
      public function doHello6() {
        $this->helper('functions');
        echo $this->config('app_name').' '.$this->config('config','ver').'<br/>';
        woniu();
      }
 }