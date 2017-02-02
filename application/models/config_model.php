<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Config_model extends CI_Model
{
    private $urlServidor = 'http://localhost/servitecserver/index.php';
    //private $urlServidor = 'http://www.signalstreet.net/index.php';

    public function getUrlServidor()
    {
        return $this->getUrlServidor();
    }
}
