Remove-Variable * -ErrorAction SilentlyContinue
. "C:\Users\Rainer Sawitzki\git\org.javacream.training.powershell\training\utility.ps1"

function Training-TestBookWrite(){
    $book = @{
        "isbn"="ISBN42"
        "title"="Powershell"
        "price"=19.99
        "available"=$true
        }
    TrainingWrite-Book $book
}

function Training-TestBookDatabaseWrite(){
    $book = @{
        "isbn"="ISBN42"
        "title"="Powershell"
        "price"=19.99
        "available"=$true
        }
    TrainingWrite-BookToDatabase $book
}

Training-TestBookDatabaseWrite
