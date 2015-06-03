import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr('string'),
  description: DS.attr('string'),
  completed: DS.attr('boolean') // TODO: add to API.
});
