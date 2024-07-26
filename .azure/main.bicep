param location string = 'westeurope'

// param acrName string
// param image string
// param imageTag string

resource appServicePlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'app-service-plan'
  location: location
  kind: 'linux'
  properties: {
    reserved: true
  }
  sku: {
    name: 'B1'
    tier: 'Basic'
  }
}

resource webApp 'Microsoft.Web/sites@2023-12-01' = {
  name: 'web-app'
  location: location
  // identity: {
  //   type: 'UserAssigned'
  //   userAssignedIdentities: {
  //     '${managedIdentity.id}': {}
  //   }
  // }
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    // siteConfig: {
    //   acrUseManagedIdentityCreds: true
    //   acrUserManagedIdentityID: managedIdentity.id
    //   appSettings: []
    //   linuxFxVersion: 'DOCKER|${acrName}.azurecr.io:${image}:${imageTag}'
    // }
  }
}
