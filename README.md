Example dbt project using Jaffle Shop data

### Environments
| Environment | Database | Schema |
|:------------|:---------|:-------|
| Development | Development | dbt_apeters |
| CI | Development | dbt_pr_# |
| Staging | Analytics | Staging |
| Production | Analytics | Production |

### Deployment
| Job | Trigger |
|:----|:--------|
| CI Job | Push to main |
| Staging Deploy | Merge to main |
| Production Deploy | Releasing new version |
