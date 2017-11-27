# existdb Packagemanager

This application allows to browse local and remote packages, install, upload or remove packages.

## Requirements 

 What will be needed up-front:
 
 * an installation of eXistdb (3.0 or above recommended) 
 * a nodejs installation (see below for instructions) 
 * an installation of the Polymer CLI for optimized builds 
 * Apache Ant configured 
 
 


## Preparation
* execute `npm install` in the root directory to install bower and other tools used for building and development
* execute `bower install` the the root directory
* make sure you have the [Polymer CLI](https://www.npmjs.com/package/polymer-cli) installed if you intend to build a compressed production version



## Building eXistdb app

### for production 


```sh
ant
```
creates build/packagemanager-x.x.x.xar


***Please note that this task might take a moment as the whole dependency tree is analysed and the compressed
version is stored into a single file.*** 

### for development

```sh
ant dev-xar
```

creates build/packagemanager-dev-x.x.x.xar


## Using gulp assistance

There's additional development support through gulp. Most prominently with

`
gulp watch
`

you can synchronize the local workspace with the app deployed in eXistdb.

Every changed file will automatically deployed into the `target' collection
 
`/db/apps/[target]`
 
To make this and other goodies work you'll need to have Nodejs installed
and call `npm install` once.


## Polymer-only

***This option is for UI Developers that want to use in http server built into Polymer CLI e.g. for testing
purposes outside the scope of a xar application.***



```
$ polymer build
```

This will create a `build/` folder with `bundled/` and `unbundled/` sub-folders
containing a bundled (Vulcanized) and unbundled builds, both run through HTML,
CSS, and JS optimizers.

You can serve the built versions by giving `polymer serve` a folder to serve
from:

```
$ polymer serve build/bundled
```

### Running Tests

```
$ polymer test
```

Your application is already set up to be tested via [web-component-tester](https://github.com/Polymer/web-component-tester). Run `polymer test` to run your application's test suite locally.



  