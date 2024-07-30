param location string
param env string

resource appServicePlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'app-service-plan-${env}'
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
  name: 'larsivar-azure-todo-${env}'
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
