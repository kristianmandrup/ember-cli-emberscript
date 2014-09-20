`import Ember from 'ember'`

# (ember)

<%= camelizedModuleName %> = (value) ->
  value

<%= classifiedModuleName %>Helper = Ember.Handlebars.makeBoundHelper <%= camelizedModuleName %>

`export { <%=camelizedModuleName %> }`

`export default <%= classifiedModuleName %>Helper`
