<?php


class Home
{

    public function index()
    {

        //mostro la lista degli strumenti
        require 'application/models/giornalimodel.php';
        $giornali_model=new GiornaliModel("r");
        $giornali = $giornali_model->getAllGiornali();

        // carico le viste, con le quali mostro strumenti
        require 'application/views/_templates/header.php';
        require 'application/views/home/index.php';
        require 'application/views/_templates/footer.php';
    }


}
