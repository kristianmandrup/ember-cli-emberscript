`import <%= camelizedModuleName %> from '<%= dasherizedPackageName %>/utils/<%= dasherizedModuleName %>'`

# (ember)

module '<%= camelizedModuleName %>'

# Replace this with your real tests.
test 'it works', ->
  result = <%= camelizedModuleName %>()
  ok result
