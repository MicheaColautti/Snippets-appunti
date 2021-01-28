<?php


class Giornali
{
    public function index()
    {
        //carico il model
        require 'application/models/giornalimodel.php';
        $giornali_model=new GiornaliModel("r");

        $giornali = $giornali_model->getAllGiornali();

        // carico le viste dove mostrerò i risultati
        require 'application/views/_templates/header.php';
        require 'application/views/giornali/index.php';
        require 'application/views/_templates/footer.php';
    }

    public function addGiornale()
    {
        // se schiaccio il bottone SUBMIT
        if (isset($_POST["submit_add_giornale"])) {
            // carico il model
            require 'application/models/giornalimodel.php';
            $giornali_model=new GiornaliModel("a");
            $giornali_model->addGiornale($_POST["titolo"], $_POST["testo"],  $_POST["redattore"],  $_POST["data"], $_POST["foto"]);
        }

        // redireziono l'utente dopo aver inserito lo strumento
        header('location: ' . URL . 'giornali/index');
    }
}
