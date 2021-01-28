<?php

class GiornaliModel
{

    private $handle;

    private $indice;


    function __construct($mode) {
        try {
            $this->handle = fopen(GIORNALI, "$mode");
        } catch (PDOException $e) {
            exit('Errore di apertura file');
        }
    }

    public function getAllGiornali()
    {
        $csv = array();
        $lines = file(GIORNALI);

        foreach ($lines as $key => $value)
        {
            $csv[$key] = str_getcsv($value,";");
        }
        return $csv;
    }

    public function addGiornale($titolo, $testo, $redattore,$data,$foto)
    {
       if(isset($titolo) && isset($testo) && isset($redattore) && isset($data) && isset($foto)){
        

            /*$target_dir = "pic/";
            $foto = $target_dir . basename($_FILES["fileToUpload"]["name"]);
            $uploadOk = 1;
            $imageFileType = strtolower(pathinfo($foto,PATHINFO_EXTENSION));
                if(isset($_POST["submit"])) {
                $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
                    if($check !== false) {
                        echo "File is an image - " . $check["mime"] . ".";
                        $uploadOk = 1;
                    } else {
                        echo "File is not an image.";
                        $uploadOk = 0;
                    }
            }*/

            $line=array("$titolo","$testo","$redattore","$data","$foto");

            fputcsv($this->handle,$line,";");
            
            fclose($this->handle);
            echo copy($foto,"pic/");
       }

    }

    

    public function riscriviCSV($contenuto)
    {
        foreach($contenuto as $row){
            fputcsv($this->handle,$row,";");
        }
        $this+";";
    //errore manca ; alla fine   
    }

  

    public function addGiornaleInArray($giornale,$lista)
    {
        $lista[$this->indice]=$giornale;

        ksort($lista);


        return $lista;
    }
}
