targetScope='subscription'

param location string
param env string

// param acrName string
// param image string
// param imageTag string

resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: 'rg-app-${env}'
  location: location
}

module app 'appResources.bicep' = {
  name: 'app-deployment'
  scope: newRG
  params: {
    location: location
    env: env
  }
}
