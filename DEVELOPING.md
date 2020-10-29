# Developer's Guide

Brief guide to setup the Loopback REST application in your local system.
A `lando` working setup will be needed.

## Setting up the system

* move to your project's folder, and start lando: `lando start`
* copy the sample general local configuration: 
  ```bash
  cp src/env.local.ts.template src/env.local.ts
  ```
  and if needed change the relevant values.
* copy the sample datasource local configuration: 
  ```bash
  cp src/datasources/mysql.datasource.local.ts.template src/datasources/mysql.datasource.local.ts
  ```
* set database connection data into this file; if the `.lando.yml` file was not change, this configuration should work:
```javascript
    export const config = {
      name: 'mysql',
      connector: 'mysql',
      url: 'mysql://mean:mean@127.0.0.1:32770/mean',
      host: '127.0.0.1',
      port: 32770,
      user: 'mean',
      password: 'mean',
      database: 'mean'
    };
```
* obtain and import a SQL dump of the database [TODO: expand on this...]:
  ```bash
    lando db-import ./path/to/database/dump.sql
  ```
* once the machine is up and running, build the node dependencies: `npm ci`
* try building the application: `npm run build`
* check if database migrations are needed: `npm run migrate`
* start the API: `npm run start`
* the API should be live on `http://127.0.0.1:4321` (or different host/port in case you customized the `env.local.ts` file)
* try exploring the API on `http://127.0.0.1:4321/explore`

## Starting / stopping the server

#### to start:
* start lando: `lando start`
* (re)build if needed: `npm run build`
* start the server: `npm run start`

#### to stop:
* stop the running npm server process
* stop lando: `lando stop`

### Using Loopback 4 cli tool
Loopback 4 command line tool is installed in the lando environment at machine build, and exposed thru the tool `lb4`;
to run `lb4` command, just prefix them with the `lando` keyword, eg. `lando lb4 model`, `lando lb4 controller`, etc.

### Tools
Any configurable HTTP tool can be use to test the API - even `curl` - although a GUI tools (as [Insomnia](https://insomnia.rest/))
can be extremely useful.
