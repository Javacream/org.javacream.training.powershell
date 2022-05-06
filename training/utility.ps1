$endpoint = "http://h2908727.stratoserver.net:8080/api/books"
function TrainingGet-Credential {
    $password = ConvertTo-SecureString "user" -AsPlainText -Force 
    return New-Object System.Management.Automation.PSCredential("user", $password)
}

function TrainingWrite-BookToDatabase($book){
    try{
        $credential = TrainingGet-Credential
        Open-MySqlConnection -Credential $credential -Database javacream -Port 3406 -Server h2908727.stratoserver.net -SSLMode Required
        Start-SqlTransaction
            Invoke-SqlUpdate -Query "insert into messages values (@data)" -Parameters @{data = $book.title}
        #Complete-SqlTransaction
        Complete-SqlTransaction

    }
    catch{
        Write-Output $_
    }
    finally{
        Close-SqlConnection
    }
}

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
        TrainingWrite-BookToDatabase $book
    }
}

function TrainingWrite-Book($book){
    Write-Output "Book: isbn=$($book.isbn), title=$($book.title), price=$($book.price), available=$($book.available)"
} 

function TrainingWrite-TitleToWebService($title){
    Invoke-RestMethod -Uri "$endpoint/$title" -Method 'Post'
}


function TrainingWrite-BookToWebService($book){
    $isbn = $book.isbn
    Invoke-RestMethod -Uri "$endpoint/$isbn" -Method 'Put' -Body ($book|ConvertTo-Json) -ContentType "application/json"
}

function TrainingRemove-BookFromWebService($isbn){
    Invoke-RestMethod -Uri "$endpoint/$isbn" -Method 'Delete'
}
