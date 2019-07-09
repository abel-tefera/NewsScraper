<?php
class Wanaw
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    // Get All Posts
    public function getAllNews()
    {
        $this->db->query("SELECT *
                        FROM news_tbl
                        ORDER BY id DESC LIMIT 20;");

        $resultsBBC = $this->db->resultset('news');

        $this->db->query("SELECT *
        FROM news_tbl
        ORDER BY id ASC LIMIT 10;");
        $resultsEt = $this->db->resultset('news');
        // die($resultsBBC);
        // return array_reverse($resultsBBC);
        return array_merge(array_reverse($resultsBBC), $resultsEt);
    }
}
