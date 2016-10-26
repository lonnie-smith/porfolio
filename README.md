# Personal portfolio site: [lonnie-smith.com](http://lonnie-smith.com)

## About
This is the code for my personal site.

Using Angular is probably overkill for a project like this, but the templating is nice and it gave me a convenient way to cross-link projects and set up routes.

If you’d like to fork the code to make your own site, be my guest.
  - Swap out the content in `app/front-page/front-page.html` and `app/resume/resume.html`.
  - The `portfolioData` service in `app/services/portfolio-data.coffee` contains most of the content for roles and projects. I pushed some content out to separate templates in `app/content-html/`, but you can create new templates and change the `templateUrl` properties in `portfolioData`.
  - Pretty much none of the stuff in `img` will be of use to you; trash it and replace with whatever you need.
  - Change out the Google Analytics ID at the bottom of `app/app-config.coffee` (or just delete the analytics code entirely).
  - Scripts to compile, minify, and concatenate app code are in `Gruntfile.js`. You’ll probably need to customize these things for your needs. There’s a super minimal deployment script in there that you’ll also need to customize if you want to use it.
  - Drop me a line if you want help with anything.

## Setting up a development environment

## Tour
I try to follow John Papa’s magesterial [Angular Style Guide](https://github.com/johnpapa/angular-styleguide/blob/master/a1/README.md) as much as possible.

I use [CoffeeScript](http://coffeescript.org) and [SASS](http://sass-lang.com) in my projects wherever possible, partly because I just like whitespace delimited languages, but mostly because I find SASS variables and CoffeeScript’s looping and object syntax so useful that they’re worth the inconvenience.

### How the code is organized.
* All code for the front-end app goes in `app/`. External dependencies, build scripts, and other fol-de-rol goes in the top-level directory.
* `./app/index.html` is the entry point. Application-wide configuration and module setup are in `./app/app-config.coffee` and `./app/app-module.coffee`.
* Stylesheets that are used across the whole site are in `app/layout/`
* The code for pages at each route go in their own folders, e.g. `app/resume/` or `app/project-detail`.
* Compiling SASS and CoffeeScript files generates a lot of clutter which I don’t like in my main source folders, so there’s a paralell file structure created under `./app/_compiled` to house compiled files.

### Setting up a development environment

* Install [Node](https://nodejs.org/) and [Ruby]([https://www.ruby-lang.org/) on your machine if you don’t have them already.
* Install [Grunt](http://gruntjs.com/): `sudo npm install -g grunt-cli`.
* Run `npm install` and `bower install` to install dependendencies.
* Compile the source: `grunt build`.
* Start a development server: `grunt connect`—then open the page at [http://localhost:8080/app/](http://localhost:8080/app/)
* Automatically recompile & reload code changes when source files are edited: `grunt watch`

