function Training-TestBookWrite(){
    $book = @{
        "isbn"="ISBN42"
        "title"="Powershell"
        "price"=19.99
        "available"=$true
        }
    TrainingWrite-Book $book
}
Training-TestBookWrite
