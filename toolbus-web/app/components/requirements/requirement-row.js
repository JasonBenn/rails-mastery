import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',
  text: null, // passed in
  actions: {
    saveRequirement: function(requirement) {
      this.sendAction('save', requirement); // because component actions don't bubble automatically.
    }
  }
});
