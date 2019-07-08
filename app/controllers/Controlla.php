<?php
  class Controlla extends Controller{
    public function __construct(){
      $this->Model = $this->model('Wanaw');

    }

    public function index(){
      $result = $this->Model->getAllNews();
      // die($result[0]->title);
      $data = [
          'rows' => $result
      ];
      $this->view('index', $data);
    }
  }