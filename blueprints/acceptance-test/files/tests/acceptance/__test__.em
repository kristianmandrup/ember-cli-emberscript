import Ember from 'ember';
import startApp from '../helpers/start-app';

# (ember)

App = null

module 'Acceptance: <%= classifiedModuleName %>',
  setup: ->
    App = startApp()

  teardown: ->
    Ember.run App, 'destroy'

test 'visiting /<%= dasherizedModuleName %>', ->
  visit '/<%= dasherizedModuleName %>'

  andThen ->
    equal currentPath(), '<%= dasherizedModuleName %>'
