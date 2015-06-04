## Running / Development

* `ember s --proxy http://localhost:3000`
* Visit at [http://localhost:4200](http://localhost:4200).

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

## Installation

* change into the new directory
* `npm install`
* `bower install`

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM)
* [Bower](http://bower.io/)
* [Ember CLI](http://www.ember-cli.com/)
* [PhantomJS](http://phantomjs.org/)
* [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
* [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

## Bugs/ares of inquiry

* How do I best respond to server errors?
  * Destroy requests should be responded with either 204 (no_content) or 422 (unprocessable_entity). Not 200, though? Wtf?
  * There should be an appropriate error event bubbling up, so an opportunity to handle that at any level. Hopefully this exists. Go through the book.
  * Ideally, I'd handle the delete error at features/index route. How/where do I change state so that it goes away when dismissed? Sounds like it needs a component, an action to dismiss, etc.
