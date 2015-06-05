import Ember from 'ember';

export default Ember.Controller.extend({
  hasText: Ember.computed.notEmpty('model.text'),
  hasDescription: Ember.computed.notEmpty('model.description'),
  isValid: Ember.computed.and('hasText', 'hasDescription'),

  actions: {
    save: function() {
      if (this.get('isValid')) {
        this.get('model').save().then(function() {
          this.transitionToRoute('features');
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
