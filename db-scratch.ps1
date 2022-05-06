try{
    Open-MySqlConnection -Password user -UserName user -Database javacream -Port 3406 -Server h2908727.stratoserver.net -SSLMode Required
}
catch{
    Write-Output $_
}
finally{
    Close-SqlConnection
}
