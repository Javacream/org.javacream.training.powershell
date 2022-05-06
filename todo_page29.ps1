$endpoint = "http://h2908727.stratoserver.net:8080/api/books"
function TrainingGet-BooksFromWebService(){
    $books = Invoke-RestMethod -Uri $endpoint
    return $books
}

function TrainingGet-BookFromWebService($isbn){
    $book = Invoke-RestMethod -Uri "$endpoint/$isbn"
    return $book
}

function TrainingWrite-Books($books){
    foreach($book in $books){
        TrainingWrite-Book $book
    }
}

function TrainingWrite-Book($book){
    Write-Output "Book: isbn=$($book.isbn), title=$($book.title), price=$($book.price), available=$($book.available)"
} 

function Training-Main(){
    $books = TrainingGet-BooksFromWebService
    TrainingWrite-Books $books
    $isbn = "ISBN1"
    $book = TrainingGet-BookFromWebService $isbn
    TrainingWrite-Book $book

}

function Training-TestBookWrite(){
    $book = @{
        "isbn"="ISBN42"
        "title"="Powershell"
        "price"=19.99
        "available"=$true
        }
    TrainingWrite-Book $book
}
#Training-TestBookWrite
Training-Main