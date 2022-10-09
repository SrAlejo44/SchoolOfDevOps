Get-Date -Format "yyyy-MM-dd"

$fileAddress = "./archivo.txt"

if(Test-Path -Path $fileAddress -PathType Leaf){
    Write-Output "El Archivo $fileName existe"
}else{
    New-Item -Path $fileAddress -ItemType File
    Write-Output "El Archivo $fileName se creó"
}

Set-Content ./archivo.txt "La Tarara, sí;
la tarara, no;
la Tarara, niña,
que la he visto yo.
Lleva la Tarara
un vestido verde
lleno de volantes
y de cascabeles.
La Tarara, sí;
la tarara, no;
la Tarara, niña,
que la he visto yo.
Luce mi Tarara
su cola de seda
sobre las retamas
y la hierbabuena.
Ay, Tarara loca.
Mueve, la cintura
para los muchachos
de las aceitunas."

(Get-Content -Path $fileAddress) -replace 'tarara','parangaricutirimicuarolina' | Set-Content -Path archivo.txt

Get-Content $fileAddress -Tail 4
