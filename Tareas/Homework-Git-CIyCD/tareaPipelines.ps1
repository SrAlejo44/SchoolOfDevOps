$MinecraftAddress = "$PSScriptRoot\ServidorMinecraft"
$dockerFileAddress = "$MinecraftAddress\dockerfile"
Set-Location $MinecraftAddress
.\server.jar
(Get-Content -Path 'eula.txt') -replace 'false','true' | Set-Content -Path 'eula.txt'
(Get-Content -Path 'server.properties') -replace 'online-mode=true','online-mode=false' | Set-Content -Path 'server.properties'
.\server.jar
if (Test-Path -Path $dockerFileAddress) {}else { New-Item $dockerFileAddress -ItemType File }
Set-Content $dockerFileAddress 'FROM openjdk
COPY . ./app
WORKDIR /app
RUN ls -al
EXPOSE 25565
ENTRYPOINT ["java", "-jar", "server.jar"]'