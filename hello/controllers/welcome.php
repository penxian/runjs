<?php
class Welcome extends MpController {
      public function doIndex(){
          echo 'Hello!';
          $this->model('User');
          echo $this->model->user->getMyName("");
      }
 }