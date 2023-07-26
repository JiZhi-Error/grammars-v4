CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer';
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' ENCRYPTION = (TYPE = 'NONE');
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' ENCRYPTION = ( MASTER_KEY = 'toto' );
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' ENCRYPTION = ( MASTER_KEY = 'toto' TYPE ='AZURE_CSE');
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' ENCRYPTION = ( TYPE ='AZURE_CSE' MASTER_KEY = 'toto' );
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' ENCRYPTION = (TYPE = 'NONE') CREDENTIALS =(AZURE_SAS_TOKEN = 'Pkey....');
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' CREDENTIALS =(AZURE_SAS_TOKEN = 'Pkey....')  ENCRYPTION = (TYPE = 'NONE');
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' CREDENTIALS =(AZURE_SAS_TOKEN = 'Pkey....');
CREATE OR REPLACE STAGE STG1 url = 'azure://myaccount.blob.core.windows.net/mycontainer' STORAGE_INTEGRATION = MYInteg;
CREATE TEMP STAGE TEMP_STAGE;
CREATE TEMP STAGE IDENTIFIER('TEMPSTAGEName');
CREATE TEMP STAGE IDENTIFIER('db.Schem."TEMPSTAGEName"');