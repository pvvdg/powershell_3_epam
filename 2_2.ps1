#2.	Отсортировать список служб по их статусу и вывести в виде таблицы из 4 свойств (выбрать самостоятельно)

Get-Service | Sort-Object "Status" -Descending | Format-Table DisplayName, ServiceName, Status, CanStop