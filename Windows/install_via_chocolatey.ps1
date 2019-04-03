# 2019-Apr-03
# chocolatey で Windows のソフトをインストールするスクリプト

# PowerShell でスクリプトを実行できるようにするのに必要なコマンド
# Set-ExecutionPolicy RemoteSigned

#Write-Host "=== Install chocolatey ==="
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


$software = @(
  # General tool
  "googlechrome";
  "firefox";
  "teamviewer";
  "msys2";
  "hyper";
  "ghostscript";

  # Editor
  "atom";
  "vscode";

  # Communication tools
  "slack";

  # Programming tool
  "git";
  "git-credential-manager-for-windows";
  "gitkraken";
  "nodejs";

  # Programming language
  "strawberryperl";
  "julia";
  "stack";
)

Write-Host "=== Update chocolatey ==="
choco upgrade chocolatey -y

Write-Host "=== Install software via chocolatey ==="

Foreach ($item in $software)
{
  choco install $item -y
}
