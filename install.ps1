# Install LinkedIn Smart Formatter (Windows PowerShell)
$ErrorActionPreference = "Stop"
$Repo = Split-Path -Parent $MyInvocation.MyCommand.Path
$Marker = Join-Path $env:USERPROFILE ".linkedin-formatter-home"
Set-Content -Path $Marker -Value $Repo -Encoding UTF8

$targets = @(
    @{ Dir = Join-Path $env:USERPROFILE ".cursor\skills"; Name = "linkedin-text-formatter"; Skill = "cursor" },
    @{ Dir = Join-Path $env:USERPROFILE ".claude\skills"; Name = "linkedin-text-formatter"; Skill = "claude-code" },
    @{ Dir = Join-Path $env:USERPROFILE ".cortex\skills"; Name = "linkedin-text-formatter"; Skill = "cortex" }
)

foreach ($t in $targets) {
    New-Item -ItemType Directory -Force -Path $t.Dir | Out-Null
    $link = Join-Path $t.Dir $t.Name
    $src = Join-Path $Repo ("skills\" + $t.Skill)
    if (Test-Path $link) { Remove-Item $link -Recurse -Force -ErrorAction SilentlyContinue }
    cmd /c mklink /J "$link" "$src" | Out-Null
}

$env:LINKEDIN_FORMATTER_HOME = $Repo
Write-Host "Installed linkedin-smart-formatter"
Write-Host "  Repo:   $Repo"
Write-Host "  Marker: $Marker"
Write-Host ""
Write-Host "Test: py -3 `"$Repo\scripts\linkedin_post.py`" --self-test"
