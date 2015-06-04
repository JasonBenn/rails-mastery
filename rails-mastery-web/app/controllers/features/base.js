import Ember from 'ember';

export default Ember.Controller.extend({
  isValid: Ember.computed('model.text', 'model.description', function() {
    return !Ember.isEmpty(this.get('model.text')) && !Ember.isEmpty(this.get('model.description'));
  }),

  actions: {
    save: function() {
      if (this.get('isValid')) {
        this.get('model').save().then(function(feature) {
          this.transitionToRoute('features.show', feature.id);
        }.bind(this));
      } else {
        this.set('errorMessage', 'You have to fill in all fields');
      }
      return false;
    },

    cancel: function() {
      return true;
    }
  }
});
