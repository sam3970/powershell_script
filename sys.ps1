$sys = Get-Process -IncludeUserName | Where UserName -match system
$usr = Get-Process -IncludeUserName | Where UserName -match Mental
$sys_name = "NT AUTHORITY\SYSTEM"
$usr_name = "DESKTOP-J8GC264\Mental"
$pro_name = Get-Process avp

function ex1
{
    if($pro_name.ProcessName -eq "avp")
    {
        write-host $pro_name.ProcessName -ForegroundColor green
        if($usr.username -eq $usr_name)
        {
            Write-Host "User 계정 프로세스들"
                Write-Host "****************************************************************************************************"
                $usr
                Write-Host "****************************************************************************************************"
            if($sys.username -eq $sys_name)
            {
                Write-Host "System 계정 프로세스들"
                Write-Host "****************************************************************************************************"
                $sys
                Write-Host "****************************************************************************************************"    
            }
        }
    }
}
    