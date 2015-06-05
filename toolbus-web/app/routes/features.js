import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    delete: function(feature) {
      var _this = this;
      feature.destroyRecord().then(function() {
        console.log(_this)
        _this.get('controller').transitionToRoute('features')
      }, function() {
        feature.rollback();
        console.log('error callback!', arguments)
      });
      return false;
    }
  }
});
