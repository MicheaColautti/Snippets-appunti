<div class="container">
    <h2>Giornali</h2>



    <div>
        <h3>Lista dei giornali</h3>
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

            <?php for ($riga=1;$riga<count($giornali);$riga++):  ?>

                <tr>
                    <?php for ($colonna=0; $colonna<count(current($giornali)); $colonna++):  ?>
                        <td><?php echo $giornali[$riga][$colonna];?></td>
                    <?php endfor; ?>
                    
                </tr>

            <?php endfor; ?>
            </tbody>
        </table>
    </div>
</div>
