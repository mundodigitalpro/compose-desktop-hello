$gradleVersion = "8.3"
$downloadUrl = "https://services.gradle.org/distributions/gradle-$gradleVersion-bin.zip"
$gradleHome = "C:\gradle"
$zipFile = "$gradleHome\gradle-$gradleVersion-bin.zip"

# Create gradle directory if it doesn't exist
New-Item -ItemType Directory -Force -Path $gradleHome

# Download Gradle
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipFile

# Extract Gradle
Expand-Archive -Path $zipFile -DestinationPath $gradleHome -Force

# Add Gradle to PATH
$gradleBinPath = "$gradleHome\gradle-$gradleVersion\bin"
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")

if ($userPath -notlike "*$gradleBinPath*") {
    [Environment]::SetEnvironmentVariable("Path", "$userPath;$gradleBinPath", "User")
    [Environment]::SetEnvironmentVariable("GRADLE_HOME", "$gradleHome\gradle-$gradleVersion", "User")
}

# Clean up zip file
Remove-Item $zipFile

Write-Host "Gradle $gradleVersion has been installed to $gradleHome\gradle-$gradleVersion"
Write-Host "Please restart your terminal for the PATH changes to take effect"
