ApplicationRoute = Ember.Route.extend
  stats: Ember.inject.service()
  model: (params) -> @get('store').findRecord('stat', 'all')
  actions:
    reloadStats: ->
      @get('store').findRecord('stat', 'all').then (stats) =>
        @get('stats')?.loadFromStats(stats)
        stats.reload()

`export default ApplicationRoute`
