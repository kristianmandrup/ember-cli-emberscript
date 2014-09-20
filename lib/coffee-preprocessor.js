var coffee = require('broccoli-coffee');

function EmberPreprocessor(options) {
  this.name = 'ember-cli-emberscript';
  this.ext = 'js';
  this.options = options || {};
}

EmberPreprocessor.prototype.toTree = function(tree, inputPath, outputPath) {
  var options = {
    bare: true,
    srcDir: inputPath,
    destDir: outputPath
  };

  return coffee(tree, options);
};

module.exports = EmberPreprocessor;
