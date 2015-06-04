import FeaturesBaseController from './base';

export default FeaturesBaseController.extend({
  actions: {
    cancel: function() {
      console.log(this.get('model'))
      this.transitionToRoute('features.show', this.get('model').id)
      return false;
    }
  }
});
