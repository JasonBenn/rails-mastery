import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    delete: function(feature) {
      // works when invoked from features/index
      // complains features.destroyRecord is not a thing when called from features/show
      // why? they're both passing models. i can verify that... yup.
      // they're both coming through this event handler.
      // AH. from show, i'm passing a promise (?)
      // from features.index, i'm passing a store object.
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
