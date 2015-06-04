import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('feature');
  },

  actions: {
    save: function() {
      console.log('save in new!')
      return true;
    },

    cancel: function() {
      console.log('cancel in new')
      return true;
    }
  }
});
