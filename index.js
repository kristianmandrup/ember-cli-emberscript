'use strict';
var path = require('path');
var EmberPreprocessor = require('./lib/coffee-preprocessor');

function EmberscriptAddon(project) {
  this._project = project;
  this.name     = 'Ember CLI Emberscript Addon';
}

EmberscriptAddon.prototype.blueprintsPath = function() {
  return path.join(__dirname, 'blueprints');
};

EmberscriptAddon.prototype.included = function(app) {
  this.app = app;

  var plugin = new EmberPreprocessor(this.app.options.coffeeOptions);

  this.app.registry.add('js', plugin);
};

// This is just here because it was required in ember-cli v0.0.37.
// To be removed when compatibility breaks.
EmberscriptAddon.prototype.treeFor = function() {};

module.exports = EmberscriptAddon;
