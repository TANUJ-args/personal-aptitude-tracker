# Aptitude Study Tracker - Quick Deploy Script
# This script helps you quickly deploy to GitHub Pages

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Aptitude Study Tracker - GitHub Pages Setup  " -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Get GitHub username
$username = Read-Host "Enter your GitHub username"

if ([string]::IsNullOrWhiteSpace($username)) {
    Write-Host "Error: Username cannot be empty!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Setting up Git repository..." -ForegroundColor Yellow

# Initialize git if not already initialized
if (-not (Test-Path ".git")) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already exists" -ForegroundColor Green
}

# Add all files
git add .
Write-Host "✓ Files staged for commit" -ForegroundColor Green

# Create commit
$commitMessage = Read-Host "Enter commit message (press Enter for default)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "Initial commit: Aptitude Study Tracker"
}

git commit -m "$commitMessage"
Write-Host "✓ Changes committed" -ForegroundColor Green

# Add remote if not exists
$remoteUrl = "https://github.com/$username/aptitude-study-tracker.git"
$existingRemote = git remote get-url origin 2>$null

if ($existingRemote) {
    Write-Host "✓ Remote already configured: $existingRemote" -ForegroundColor Green
} else {
    git remote add origin $remoteUrl
    Write-Host "✓ Remote added: $remoteUrl" -ForegroundColor Green
}

# Set main branch and push
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow

git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "================================================" -ForegroundColor Green
    Write-Host "  SUCCESS! Your code is now on GitHub!         " -ForegroundColor Green
    Write-Host "================================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "1. Go to: https://github.com/$username/aptitude-study-tracker" -ForegroundColor White
    Write-Host "2. Click 'Settings' > 'Pages'" -ForegroundColor White
    Write-Host "3. Under 'Source', select 'main' branch and '/ (root)'" -ForegroundColor White
    Write-Host "4. Click 'Save'" -ForegroundColor White
    Write-Host ""
    Write-Host "Your site will be live at:" -ForegroundColor Cyan
    Write-Host "https://$username.github.io/aptitude-study-tracker" -ForegroundColor Yellow
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "================================================" -ForegroundColor Red
    Write-Host "  Push failed! Please check the error above    " -ForegroundColor Red
    Write-Host "================================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "1. Make sure the repository exists on GitHub" -ForegroundColor White
    Write-Host "2. Check your Git credentials are configured" -ForegroundColor White
    Write-Host "3. Verify you have permission to push" -ForegroundColor White
    Write-Host ""
}

Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
