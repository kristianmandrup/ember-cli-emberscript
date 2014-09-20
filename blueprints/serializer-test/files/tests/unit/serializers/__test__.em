`import { test, moduleFor } from 'ember-qunit'`

# (ember)

moduleFor 'serializer:<%= dasherizedModuleName %>', '<%= classifiedModuleName %>Serializer', {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}

# Replace this with your real tests.
test 'it exists', ->
  serializer = @subject()
  ok serializer
