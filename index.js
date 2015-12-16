'use strict';
var path = require('path');
var checker = require('ember-cli-version-checker');
var EmberPreprocessor = require('./lib/coffee-preprocessor');

module.exports = {
  name: 'Ember CLI Emberscript Addon',

  shouldSetupRegistryInIncluded: function() {
    return !checker.isAbove(this, '0.2.0');
  },

  blueprintsPath: function() {
    return path.join(__dirname, 'blueprints');
  },

  setupPreprocessorRegistry: function(type, registry) {
    // FIXME: since this is being called before included(), what's a safe way to get the app's config?
    // See https://github.com/kimroen/ember-cli-coffeescript/issues/98
    var plugin = new EmberPreprocessor({});
    registry.add('js', plugin);
  },

  included: function(app) {
    this.app = app;

    if (this.shouldSetupRegistryInIncluded()) {
      this.setupPreprocessorRegistry('parent', app.registry);
    }
  }
};
