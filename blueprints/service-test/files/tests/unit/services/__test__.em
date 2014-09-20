`import { test, moduleFor } from 'ember-qunit'`

# (ember)

moduleFor 'service:<%= dasherizedModuleName %>', '<%= classifiedModuleName %>Service', {
  # Specify the other units that are required for this test.
  # needs: ['service:foo']
}

# Replace this with your real tests.
test 'it exists', ->
  service = @subject()
  ok service
