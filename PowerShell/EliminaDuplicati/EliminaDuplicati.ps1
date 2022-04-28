
#ATTENZIONE: inserire solo file txt e bmp
<###########################################################################################
#author: Michea Colautti
#version 17/5/2020
#Inserire come primo parametr una cartella in cui si vogliono eliminare i duplicati, 
#come secondo parametro(opzionale), inserie il nome del file di log, 
#se non viene specificato sara usato 'dulicati.log'.
#Se vengono trovati file doppi, vengono spostati nella cartella 'doppioni', situata nella stessa #cartella dello script. L`utente puo decidere quale dei 2 file tenere"
###########################################################################################>
param($perc, $logPath)
Trap{ $_.Exception.Message ; continue}


if(-not($perc -eq $null)){
	if(Test-Path $perc -PathType Container){
		if(-not($logPath -eq $null)){

			$now=$pwd.Path
			$logFile=$now+"\"+$logPath+".log"
			
			if(-not(Test-Path $logFile -PathType Leaf)){
				new-item -type file $logFile | out-null
			}else{
				Add-content $logFile ((Get-Date).toString()+": Log gia esistente: "+$logFile)
			}
			
		}else{
			$logFile="duplicati.log"
			if(-not(Test-Path $logFile -PathType Leaf)){
				new-item -type file $logFile | out-null
			}else{
				Add-content $logFile ((Get-Date).toString()+": Log gia esistente: "+$logFile)
			}
		}

		<#
		#Serve a tornare al punto di partenza, dato che lo script cambia cartella
		#>
		$start=pwd

		<#
		#Il percorso in cui verificare i duplicati
		#>
		cd $perc

		<#
		#La lista degli elementi da controllare
		#>
		$origin= ls | Where-Object{(($_.Extension -like ".txt") -or ($_.Extension -like ".bmp"))}

		<#
		#Il contenuto dei file
		#>
		$content=@()

		<#
		#I percorsi dei file, i cui indici corrispondo al contenuto
		#>
		$pathFile=@()
		
		<#
		#L'arry che conterra i percorsi dei file da eliminare
		#>
		$erase=@()
		
		$fold="\doppioni\"
		$folderPath=$start.Path+""+$fold
		
		for($a=0;$a -lt 2; $a++){
			if($a -gt 0){
				
				for($i=0;$i -lt $content.count; $i++){
					for($k=0;$k -lt $content.count;$k++){
						if(-not($pathFile[$i] -eq $pathFile[$k])-and($content[$i] -eq $content[$k])){
							if($k -lt 1){
								if(-not(Test-Path $folderPath -PathType Container)){
										
									mkdir $folderPath | out-null
									Add-content $logFile ((Get-Date).toString()+":Cartella doppioni creata")
								}else{
									Add-content $logFile ((Get-Date).toString()+":Cartella doppioni già esistente")
								}
							}

							Copy-Item -Path $pathFile[$i] -Destination $folderPath | out-null
							$erase+=$pathFile[$i]
							Add-content $logFile ((Get-Date).toString()+": File"+$pathFile[$k].name+" spostato nella cartella"+$folderPath)
						}
					}	
				}
				for($i=0;$i -lt $erase.count;$i++){
					rm $erase[$i]
					Add-content $logFile ((Get-Date).toString()+": File "+$pathFile[$i]+" eliminato")
				}
			}else{
				
				for($j=0;$j -lt $origin.count; $j++){

					
					
					$pathProv=$pwd.Path
					$pathFile+=$pathProv+"\"+$origin[$j].name
					$content+=Get-Content -Path $pathFile[$j]
					
					Add-content $logFile ((Get-Date).toString()+": Elemento aggiunto alla lista: "+$pathFile[$j])
				}
			}

		}
		cd $start
	}elseIf($perc -eq '-info'){
		write-host
		write-host "Per usare questo script, inserire come primo argomento una cartella in cui si vogliono eliminare i duplicati, come secondo parametro(opzionale), inserie il nome del file di log, se non viene specificato sara usato 'dulicati.log'."

		write-host "Se vengono trovati file doppi, vengono spostati nella cartella 'doppioni', situata nella stessa cartella dello script. L`utente puo decidere quale dei 2 file tenere"
		write-host

	}else{
		write-host
		write-host "EliminaDuplicati.ps1 '-info': per ottenere informazioni approfondite"
		write-host EliminaDuplicati.ps1 [percorsoCartella] [<nomeLog>]
		write-host ATTENZIONE: inserire solo file txt e bmp
	}
}else{
	
	write-host
	write-host "EliminaDuplicati.ps1 '-info': per ottenere informazioni approfondite"
	write-host EliminaDuplicati.ps1 [percorsoCartella] [<nomeLog>]
	write-host ATTENZIONE: inserire solo file txt e bmp
}