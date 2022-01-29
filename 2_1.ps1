#1.	Подсчитать суммарный размер занимаемый файлами в папке C:\windows (и во всех подпапках) за исключением файлов *.tmp (используя конвеер)

$path = "C:\Files"

"{0:N2} Kb" -f ((Get-ChildItem -Force $path -Exclude *.tmp -Recurse -ErrorAction SilentlyContinue |
        Where-Object { $_.LinkType -notmatch "HardLink" } |
        Measure-Object Length -Sum).Sum / 1Kb)