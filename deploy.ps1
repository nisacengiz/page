# GitHub Pages Dağıtım Betiği
$git = "C:\Users\Nisa Cengiz\AppData\Local\GitHubDesktop\app-3.5.5\resources\app\git\cmd\git.exe"
$repoUrl = "https://github.com/nisacengiz/page.git"

Write-Host "--- Git Başlatılıyor ---" -ForegroundColor Cyan
if (!(Test-Path .git)) {
    & $git init
}

& $git branch -M main
& $git remote remove origin 2>$null
& $git remote add origin $repoUrl

Write-Host "--- Dosyalar Ekleniyor ---" -ForegroundColor Cyan
& $git add .
& $git commit -m "Site guncellendi: $(Get-Date)"

Write-Host "--- GitHub'a Gönderiliyor ---" -ForegroundColor Green
Write-Host "LÜTFEN DİKKAT: Tarayıcınızda bir giriş penceresi açılabilir, lütfen onaylayın." -ForegroundColor Yellow
& $git push -u origin main --force

Write-Host "--- BİTTİ ---" -ForegroundColor Cyan
Write-Host "Eğer 'Repository not found' hatası alıyorsanız, lütfen önce GitHub'da 'page' isimli bir depo oluşturun."
pause
