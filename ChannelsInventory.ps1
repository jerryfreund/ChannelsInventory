

$gID = Get-Team | ForEach-Object GroupId
$tName = Get-Team | ForEach-Object DisplayName


#"length"
#$test.Length

for ($i = 0; $i -lt $gID.length; $i++){
    
    "Site Name ", $tName[$i]
    "Teams Site ID ", $gID[$i]
    

    "Channel(s) on this site:"
    Get-TeamChannel -GroupId $gID[$i] | ForEach-Object DisplayName

    
    $count = Get-TeamChannel -GroupId $gID[$i] | ForEach-Object DisplayName
    
    foreach($MMM in $count){
        
        "-----------"
        $MMM
        
        Get-TeamChannelUser -GroupId $gID[$i] -DisplayName $MMM

        "-----------"
    }

    "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    

}
