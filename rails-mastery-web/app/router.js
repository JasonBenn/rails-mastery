import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('features');
  this.route('features', function() {
    this.route('new');
    this.route('show', { path: ':feature_id' });
  });
});

export default Router;
