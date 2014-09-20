`import { test, moduleFor } from 'ember-qunit'`

# (ember)

moduleFor 'route:<%= dasherizedModuleName %>', '<%= classifiedModuleName %>Route', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', ->
  route = @subject()
  ok route
