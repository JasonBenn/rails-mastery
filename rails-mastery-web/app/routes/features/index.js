import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('feature');
  },

  actions: {
    delete: function(feature) {
      feature.destroyRecord().then(function(response) {
        console.log('response', response)
        this.transitionToRoute('features');
      }, function(error) {
        console.log(error)
        console.log('errors! still getting hit even with 200 OK')
      });
      return false;
    }
  }
});
