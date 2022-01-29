#1.	Сохранить в текстовый файл 10 последних записей ситемного лога Security. (Требуются права администратора)

Get-EventLog Security -Newest 10 | Format-Table -AutoSize > $HOME\file.txt

#Get-EventLog Security -Newest 10 | Format-Table -AutoSize | Out-File $HOME\file.txt