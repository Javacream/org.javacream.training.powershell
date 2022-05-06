function TrainingGet-Credential {
    $password = ConvertTo-SecureString "user" -AsPlainText -Force 
    return New-Object System.Management.Automation.PSCredential("user", $password)
}

try{
    $credential = TrainingGet-Credential
    Open-MySqlConnection -Credential $credential -Database javacream -Port 3406 -Server h2908727.stratoserver.net -SSLMode Required
    Start-SqlTransaction
        Invoke-SqlUpdate -Query "insert into messages values ('Hugo2')"
    #Complete-SqlTransaction
    Undo-SqlTransaction

    Start-SqlTransaction
        $data = Invoke-SqlQuery -Query "select * from messages"
        Write-Output $data
    Complete-SqlTransaction

}
catch{
    Write-Output $_
}
finally{
    Close-SqlConnection
}
