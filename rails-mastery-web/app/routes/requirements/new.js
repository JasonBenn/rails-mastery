import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('requirement', {
      feature: this.modelFor('features/show')
    });
  },

  errorMessage: 'sup',

  actions: {
    save: function() {
      var model = this.modelFor('requirements/new')
      if (model.get('isValid')) {
        model.save().then(function() {
          // success
          this.transitionTo('requirements')
        }, function() {
          // error
          model.rollback();
        })
      } else {
        this.set('errorMessage', 'invalid!')
      }
    },

    cancel: function() {
      this.transitionTo('requirements')
    }
  }
});
