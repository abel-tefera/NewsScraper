<?php
  class Wanaw {
    private $db;
    
    public function __construct(){
      $this->db = new Database;
    }

    // Get All Posts
    public function getAllNews(){
      $this->db->query("SELECT *
                        FROM news_tbl 
                        ORDER BY id DESC LIMIT 30;");

      $results = $this->db->resultset('news');

      return $results;
    }
  }