    <div class="container">
        <h2>GESTIONE GIORNALI</h2>
        <div>
            <h3>Aggiungi un giornale</h3>
            <form action="<?php echo URL; ?>giornali/addGiornale" method="POST">
                <label>Titolo</label>
                <input type="text" name="titolo" value="" required />
                <label>Testo</label>
                <input type="text" name="testo" value="" required />
                <label>Redattore</label>
                <input type="text" name="redattore" value="" />
                <label>Data</label>
                <input type="date" name="data" value="" />
                <label>Foto</label>
                <input type="file" name="foto" value="" />
                <input type="submit" name="submit_add_giornale" value="Submit" />
            </form>
        </div>
        <div>
            <h3>Giornali</h3>

                <table>
                    <thead style="background-color: #ddd; font-weight: bold;">
                    <tr>
                        <td>titolo</td>
                        <td>testo</td>
                        <td>redattore</td>
                        <td>data</td>
                        <td>foto</td>

                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php $riga; $colonna; for ($riga=1;$riga<count($giornali);$riga++):  ?>

                        <tr>
                            <!-- per ogni colonna metto il dato in un TD -->
                            <?php for ($colonna=0; $colonna<count(current($giornali)); $colonna++):  ?>
                                <td><?php echo $giornali[$riga][$colonna];?></td>
                            <?php endfor; ?>
                          
                        </tr>

                    <?php endfor; ?>
                    </tbody>
                </table>



        </div>
    </div>
