$books = Invoke-RestMethod -Uri http://h2908727.stratoserver.net:8080/api/book
foreach($book in $books){
    Write-Output $book.price
}
