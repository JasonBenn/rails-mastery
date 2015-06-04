import Ember from 'ember';

export default Ember.Controller.extend({
  isValid: Ember.computed('model.text', 'model.description', function() {
    return !Ember.isEmpty(this.get('model.text')) && !Ember.isEmpty(this.get('model.description'))
  }),

  actions: {
    save: function() {
      if (this.get('isValid')) {
        this.get('model').save().then(function(feature) {
          this.transitionToRoute('feature.show', feature)
        }.bind(this))
      } else {
        this.set('errorMessage', 'You have to fill in all fields')
      }
      console.log('save in controller!')
      return false;
    },

    cancel: function() {
      debugger
      console.log('cancel in controller')
      return true;
    }
  }
});
