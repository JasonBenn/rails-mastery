import FeaturesBaseController from './base';

export default FeaturesBaseController.extend({
  actions: {
    cancel: function() {
      this.transitionToRoute('features.show', this.get('model').id)
      return false;
    }
  }
});
