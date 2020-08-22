$dir = 'd:\cafe24_study'

function ex3
{
    foreach($line in (Get-Content $dir\input.txt -ReadCount 0 -Encoding UTF8))
    { 
        if ($line -like '*set*')
        { 
            Write-Host ""
            Write-Host "set을 설정했을 때 나오는 문구는?"
            $line
            Write-Host ""
            Write-Host "그 라인에서 왼쪽에서 2번째 단어는?"
            ($line -split ' ')[+1]
        }
    }
}