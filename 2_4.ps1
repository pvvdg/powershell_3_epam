#4.	Подсчитать для свойства виртуальная память (VM) всех запущенных процессов: минимальное и максимальное значения, среднее и сумму.

Get-Process | Measure-Object -Property VM -Maximum -Sum -Minimum -Average

$procs = Get-Process | Sort-Object -Property VM
$min = $procs[0].VM; $max = $procs[-1].VM; $avg = 0; $sum = 0;

foreach ($proc in $procs) {
    $sum += $proc.VM
}

$avg = $sum / $procs.Length

Write-Output "Count: $($procs.Length)", "Average: $avg", "Sum: $sum", "Maximum: $max" , "Minimum: $min", "Property: VM"


