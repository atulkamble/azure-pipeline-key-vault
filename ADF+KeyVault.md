# Azure Data Factory + Key Vault Practice

1. Create Azure Data Factory.
2. Open ADF Studio > Manage > Linked services.
3. Create an **Azure Key Vault** linked service.
4. Select the Key Vault and use the Data Factory managed identity.
5. In Key Vault IAM, grant the Data Factory managed identity **Key Vault Secrets User** at the required scope.
6. Create another linked service (for example Azure SQL) and choose the Key Vault secret for its password/connection credential where supported.
7. Test connection.

Do not hardcode passwords in ADF JSON or Git.
