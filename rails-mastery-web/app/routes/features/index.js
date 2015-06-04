import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('feature');
  },

  actions: {
    delete: function(feature) {
      feature.destroyRecord().then(function() {
        console.log('success callback!', arguments)
      }.bind(this), function() {
        feature.rollback();
        console.log('error callback!', arguments)
      }.bind(this));
      return false;
    }
  }
});
