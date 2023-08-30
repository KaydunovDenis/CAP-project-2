# CAP-project-2
CAP java project, MTA app, OData v4

### Running
> mvn clean install
> mvn spring-boot:run

---
### Resources
1. [Getting-started: OData](https://www.odata.org/getting-started/)
 

---
### Deploying
[Tutorial: Deploy MTA](https://developers.sap.com/tutorials/btp-app-cap-mta-deployment.html#bc2b1742-a01f-421e-ae33-ce312d0a7a66)
> npm install --global mbt  
> cf login  

[Install MultiApps:](https://github.com/cloudfoundry/multiapps-cli-plugin#manual-installation)
This is a Cloud Foundry CLI plugin (formerly known as CF MTA Plugin) for performing operations on multi-target applications (MTAs) in Cloud Foundry, such as deploying, removing, viewing, etc. It is a client for the CF MultiApps Controller (formerly known as CF MTA deploy-service), which is an MTA deployer implementation for Cloud Foundry.
> cf install-plugin multiapps  
> cds add mta  
> mbt build -t ./  
> cf deploy CAP-project-2_1.0.0.mtar

check:
> cf apps

Adding DB:
https://developers.sap.com/tutorials/hana-cloud-mission-trial-2.html
> cds add hana
change a service-plan for a trial account in the yaml file:
```yaml
resources:
  - name: hana_db
    type: com.sap.xs.hdi-container
    parameters:
      service: hana-cloud-trial
      service-plan: hana
```

Run this to generate an initial set of empty .csv files with header lines based on your CDS model:
> cds add data

The power of CDS!
>cds compile db/books.cds --to sql
>cds compile db/books.cds --to json

> npm add @cap-js/sqlite -D  
or
>npm add sqlite3 -D  
> cds deploy --to sqlite //create db file with name db.sqlite


```xml
 <!-- https://mvnrepository.com/artifact/org.xerial/sqlite-jdbc -->
		<dependency>
			<groupId>org.xerial</groupId>
			<artifactId>sqlite-jdbc</artifactId>
			<version>3.42.0.1</version>
		</dependency>
```


Test data generation for CSV:
[Homepage](https://plugins.jetbrains.com/plugin/16873-test-data)

https://cap.cloud.sap/docs/get-started/
https://medium.com/nerd-for-tech/sap-tutorial-complete-cap-java-part-1-fc1868c7bbba

