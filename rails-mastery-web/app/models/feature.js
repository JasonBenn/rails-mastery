import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr('string'),
  description: DS.attr('string'),
  truncatedDescription: Ember.computed('description', function() {
    return this.get('description') + '...';
  })
});
