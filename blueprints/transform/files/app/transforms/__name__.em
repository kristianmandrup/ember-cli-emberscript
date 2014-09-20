import DS from 'ember-data';

# (ember)

<%= classifiedModuleName %>Transform = DS.Transform.extend
  deserialize: (serialized) ->
    serialized

  serialize: (deserialized) ->
    deserialized

`export default <%= classifiedModuleName %>Transform`
