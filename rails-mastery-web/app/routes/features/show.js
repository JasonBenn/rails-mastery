import Ember from 'ember';

export default Ember.Route.extend({

  model: function(params) {
    var currentId = Number(params.feature_id);
    return {
      currentFeature: this.store.find('feature', currentId),
      previousFeature: this.store.find('feature', currentId - 1),
      nextFeature: this.store.find('feature', currentId + 1)
    };
  }
});
