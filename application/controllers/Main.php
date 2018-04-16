<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('form','url');
//        $this->load->model('model_name','',TRUE);
    }

    public function index()
    {
        $this->load->view('layout/header');
        $this->load->view('layout/sidebutton');
        $this->load->view('layout/content/content');
        $this->load->view('layout/footer');
    }

}

//    function index(){
//
//    }


