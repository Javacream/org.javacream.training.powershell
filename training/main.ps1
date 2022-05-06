Remove-Variable * -ErrorAction SilentlyContinue
. "C:\Users\Rainer Sawitzki\git\org.javacream.training.powershell\training\utility.ps1"
function Training-Main(){
    $books = TrainingGet-BooksFromWebService
    TrainingWrite-Books $books
    $isbn = "ISBN1"
    $book = TrainingGet-BookFromWebService $isbn
    TrainingWrite-Book $book

}
Training-Main

