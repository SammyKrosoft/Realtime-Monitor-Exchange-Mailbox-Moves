cls
While ($true) {
  $CurrentDate=get-date
  $Infos=Get-MoveRequest | Get-MoveRequestStatistics | select Identity,*percent*,status,targetdatabase
  cls
  $CurrentDate
  $infos|ft
  sleep 2
} 
