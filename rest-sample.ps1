Remove-Variable * -ErrorAction SilentlyContinue
try{
    $books = Invoke-RestMethod -Uri http://h2908727.stratoserver.net:8080/api/books
    foreach($book in $books){
        Write-Output $book.title
    }
}
catch{
    Write-Output "error: $_"
}

