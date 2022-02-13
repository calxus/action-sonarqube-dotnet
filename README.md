# SonarScanner for .NET

SonarScanner for .NET for use in Github Actions.

## Use with self-hosted SonarQube

``` yaml
    - name: SonarScanner for .NET 6
      uses: recipopdev/action-sonarqube-dotnet@v1.0.0
      with:
        sonarProjectKey: your_projectkey
        sonarProjectName:  your_projectname
        sonarHostname:  your_selfhosted_sonarqube_hostname
  env:
    SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

# Description of all inputs

``` yaml
inputs:
  sonarProjectKey:
    description: "The key of the SonarQube project"
    required: true
  sonarProjectName:
    description: "The name of the SonarQube project"
    required: true
  sonarHostname:
    description: "The SonarQube server URL. For SonarCloud, skip this setting."
    default: "https://sonarcloud.io"
    required: false
```