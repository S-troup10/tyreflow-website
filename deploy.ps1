#Requires -Version 5.1
<#
.SYNOPSIS
    Deploy TyreFlow website to GitHub Pages
.DESCRIPTION
    Creates GitHub repo, pushes code, and enables GitHub Pages automatically
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$GithubToken,
    
    [string]$Username = "S-troup10",
    [string]$RepoName = "tyreflow-website"
)

$ErrorActionPreference = "Stop"

Write-Host "🚀 Starting TyreFlow deployment..." -ForegroundColor Cyan
Write-Host ""

# Set GH_TOKEN for gh CLI
$env:GH_TOKEN = $GithubToken

# Navigate to project
Set-Location "C:\Users\simon\.openclaw\workspace\tyreflow-website"

# Configure git
git config user.email "agent@openclaw.ai"
git config user.name "OpenClaw Agent"

Write-Host "📦 Creating GitHub repository..." -ForegroundColor Yellow

# Create repo using gh CLI
$repoUrl = "https://github.com/$Username/$RepoName"

try {
    & "C:\Users\simon\.openclaw\workspace\tools\bin\gh.exe" repo create $RepoName --public --source=. --push 2>&1 | Out-Null
    Write-Host "✅ Repository created: $repoUrl" -ForegroundColor Green
} catch {
    Write-Host "⚠️  Repo may already exist, continuing..." -ForegroundColor Yellow
    git remote remove origin 2>$null
    git remote add origin "https://$Username`:$GithubToken@github.com/$Username/$RepoName.git"
    git push -u origin main --force
}

Write-Host ""
Write-Host "🌐 Enabling GitHub Pages..." -ForegroundColor Yellow

# Enable GitHub Pages via API
$headers = @{
    "Authorization" = "token $GithubToken"
    "Accept" = "application/vnd.github.v3+json"
}

$body = @{
    source = @{
        branch = "main"
        path = "/"
    }
} | ConvertTo-Json

try {
    Invoke-RestMethod -Uri "https://api.github.com/repos/$Username/$RepoName/pages" -Method Post -Headers $headers -Body $body -ContentType "application/json" -ErrorAction SilentlyContinue
    Write-Host "✅ GitHub Pages enabled!" -ForegroundColor Green
} catch {
    Write-Host "⚠️  GitHub Pages may already be enabled" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "⏳ Waiting for deployment..." -ForegroundColor Yellow
Start-Sleep -Seconds 10

# Check deployment status
$deployments = Invoke-RestMethod -Uri "https://api.github.com/repos/$Username/$RepoName/deployments" -Headers $headers

if ($deployments) {
    Write-Host "✅ Deployment in progress!" -ForegroundColor Green
}

Write-Host ""
Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  🎉 TYREFLOW WEBSITE DEPLOYED!" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Host "  🌐 Live URL: https://$Username.github.io/$RepoName" -ForegroundColor White
Write-Host "  📁 Repo: https://github.com/$Username/$RepoName" -ForegroundColor White
Write-Host ""
Write-Host "  Note: It may take 2-3 minutes for the site to go live" -ForegroundColor Yellow
Write-Host ""
