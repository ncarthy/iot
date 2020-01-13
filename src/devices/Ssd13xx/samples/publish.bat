dotnet publish -r linux-arm /p:ShowLinkerSizeComparison=true 
pushd .\samples\bin\Debug\netcoreapp3.1\linux-arm\publish
wsl rsync -Pav -e "ssh -i ~/.ssh/id_ecdsa" * root@crius:/home/pi/Desktop/oled_test
popd