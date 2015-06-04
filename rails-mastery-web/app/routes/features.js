import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    save: function() {
      console.log('save in feature!')
      return true;
    },

    cancel: function() {
      console.log('cancel in feature')
      return true;
    }
  }
});
