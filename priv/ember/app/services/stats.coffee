`import Ember from 'ember'`

StatsService = Ember.Service.extend
  processed: 0
  failed: 0
  busy: 0
  enqueued: 0
  retrying: 0
  scheduled: 0

  loadFromStats: (stats) ->
    return if !stats

    @set('processed', stats.get('processed') || 0)
    @set('failed', stats.get('failed') || 0)
    @set('enqueued', stats.get('enqueued') || 0)
    @set('retrying', stats.get('retrying') || 0)
    @set('scheduled', stats.get('scheduled') || 0)

  incrementStat: (stat, value) ->
    newValue = @get(stat) + value
    @set stat, newValue

  setStat: (stat, value) -> @set stat, value

`export default StatsService`
