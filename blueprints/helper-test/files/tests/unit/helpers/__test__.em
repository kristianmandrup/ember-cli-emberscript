`import { <%= camelizedModuleName %> } from '<%= dasherizedPackageName %>/helpers/<%= dasherizedModuleName %>'`

# (ember)

module '<%=classifiedModuleName %>Helper'

# Replace this with your real tests.
test 'it works', ->
  result = <%= camelizedModuleName %> 42
  ok result
