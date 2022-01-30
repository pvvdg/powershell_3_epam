#6.	Получите список соединений TCP (локальный адрес и порт и удаленный адрес и порт). Если они созданы раньше 10 минут назад
# (часа, дня – выбрать наиболее подходящий, чтобы вывод был поинтересней), то выводить строку красным, добавив еще дату создание и идентификатор процесса-владельца.

$connections = Get-NetTCPConnection

foreach ($connection in $connections) {
    if ($connection.CreationTime -lt (Get-Date).AddMinutes(-10)) {
        Write-Host "LocalAddress - $($connection.LocalAddress), LocalPort - $($connection.LocalPort), RemoteAddress - $($connection.RemoteAddress), RemotePort - $($connection.RemotePort)" -ForegroundColor Blue
    }
    else {
        Write-Host "LocalAddress - $($connection.LocalAddress), LocalPort - $($connection.LocalPort), RemoteAddress - $($connection.RemoteAddress), RemotePort - $($connection.RemotePort),
        CreationTime - $($connection.CreationTime), OwningProcess - $($connection.OwningProcess)" -ForegroundColor Red
    }
}

