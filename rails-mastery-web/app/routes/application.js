import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    save: function() {
      console.log('save in app!')
      return true;
    },

    cancel: function() {
      console.log('cancel in app')
      return true;
    }
  }
});
