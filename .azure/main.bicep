param repo_owner string
param repo_name string
param app_name string

resource app_site 'Microsoft.Web/staticSites@2023-12-01' = {
  name: app_name
  location: 'West Europe'
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  properties: {
    repositoryUrl: 'https://github.com/${repo_owner}/${repo_name}'
    branch: 'main'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'GitHub'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}
