# \<existdb-packagemanager\>

a web component implementing eXistdb packagemanager

## Install the Polymer-CLI

First, make sure you have the [Polymer CLI](https://www.npmjs.com/package/polymer-cli) installed. Then run `polymer serve` to serve your application locally.

## Viewing Your Application

```
$ polymer serve
```

## Building Your Application

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

## Running Tests

```
$ polymer test
```

Your application is already set up to be tested via [web-component-tester](https://github.com/Polymer/web-component-tester). Run `polymer test` to run your application's test suite locally.

## Using gulp assistance

There's additional development support through gulp. Most prominently with

`
gulp watch
`

you can synchronize the local workspace with the app deployed in eXistdb.

Every changed file will automatically deployed into the `target' collection
 
 `/db/apps/[target]`
 
 To make this and other goodies work you'll need to have Nodejs installed
 and call
 
 `npm install`
  
  once. 
  