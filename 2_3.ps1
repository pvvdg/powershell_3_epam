#3.	Вывести список из 6 процессов занимающих дольше всего процессор (свойство CPU) отсортировав их по имени.

(Get-Process | Sort-Object CPU -Descending)[0..5] | Sort-Object ProcessName -Descending

