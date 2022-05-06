Remove-Variable * -ErrorAction SilentlyContinue
function TrainingDo-DemoArgs{
    #Write-Output "$p1 $p2"
    Write-Output $args.Length

}
function TrainingDo-DemoParams($p1, $p2){
    Write-Output "$p1 $p2"

}

function TrainingDo-DemoParams($p1, $p2){
    $functionResult = "$p1 $p2"
    return $functionResult
}


$result = TrainingDo-DemoParams Hello World
Write-Output $result
Write-Output $p1 $functionResult
