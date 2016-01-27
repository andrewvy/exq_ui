ApplicationController = Ember.Controller.extend
  stats: Ember.inject.service()
  setupStatsOnInit: Ember.on 'init', ->
    @get('stats')?.loadFromStats(@model)

`export default ApplicationController`
