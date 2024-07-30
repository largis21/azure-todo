targetScope='subscription'

param location string

resource sharedRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: 'rg-shared'
  location: location
}

module acr 'acr.bicep' = {
  name: 'acr-deployment'
  scope: sharedRG
  params: {
    location: location
  }
}
