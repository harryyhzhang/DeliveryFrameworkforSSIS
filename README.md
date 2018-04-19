# DeliveryFrameworkforSSIS

This simple project is to demo how to resolve the common developing issue in end to end data warehouse development and delivery. 

It allow any change from business requirement, such as reporting,predictive analysis, will be easily applied to MS data warehouse, ETL, CUBE accordingly, it provides a framwork to garantee quick feedkback to any design changes, ensure the regression testing, so that it will improve the etl project efficiency.

The issue it try to demo:
1. How to automated the sandbox creation.
./go.bat localDB
it will automate create database for executing SSIS package.
2. How to control develop and test ETL by automated test case.
./go.bat TestETLLocal
it will create sandbox and run necessary test case.
3. How to control schema version.
It involved the concept of Evolutionary database design, dbdeploy is the tools to address the main concept. All the upgrade script will be labeled and saving into delta folder, so that all developers are able to share and sync with their local sandbox.

Done!
