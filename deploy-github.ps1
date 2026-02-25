# One-Command Deploy Script
# Usage: .\deploy-github.ps1 -Token "your_github_token_here"

param([string]$Token)

if (-not $Token) {
    Write-Host "❌ Error: GitHub token required" -ForegroundColor Red
    Write-Host ""
    Write-Host "To get your token:"
    Write-Host "1. Go to https://github.com/settings/tokens"
    Write-Host "2. Click 'Generate new token (classic)'"
    Write-Host "3. Check 'repo' and 'workflow' permissions"
    Write-Host "4. Generate and copy the token"
    Write-Host ""
    Write-Host "Then run: .\deploy-github.ps1 -Token 'ghp_xxxxxxxxxxxx'"
    exit 1
}

& $PSScriptRoot\deploy.ps1 -GithubToken $Token
