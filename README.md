# CAP-project-2
CAP java project, MTA app, OData v4

### Running
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

For running locally:
npm install hdb
npm i @sap/xssec


https://cap.cloud.sap/docs/get-started/
https://medium.com/nerd-for-tech/sap-tutorial-complete-cap-java-part-1-fc1868c7bbba

