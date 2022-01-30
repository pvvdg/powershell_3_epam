# 5.	Вывести список названий и занятую виртуальную память (в Mb) каждого процесса,
#  разделённые знаком тире, при этом если процесс занимает более 100Mb – выводить информацию красным цветом, иначе зелёным.


$procs = Get-Process

foreach ($proc in $procs) {
    if (($proc.VM) / 1Mb -gt 100) {
        Write-host  "$($proc.Name) - $($proc.VM / 1Mb) Mb" -ForegroundColor red
    }
    else {
        Write-host "$($proc.Name) - $($proc.VM / 1Mb) Mb" -ForegroundColor Green
    }
}