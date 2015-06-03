## Rails Mastery

To really understand Rails, you have to build lots of projects in Rails. You have all sorts of ideas...

* A private journaling app
* A TV show fantasy league generator
* A shirt subscription website

And tons more. Rails is awesome! You're definitely better than when you started. But now you want to take on projects specifically to expand your knowledge of Rails. But where to begin? You don't know what you don't know.

Which is what this project is: a list of things that you might not know you didn't know. Connect a Rails repo and it'll automagically scan for evidence of important Rails features (polymorphic associations? check. Rendering a JSON API? check) and show you a list of Rails capabilities that you should consider adding to current or future apps (XSS protection, API versioning, fancy routing).

## Buzzwords

In addition to using "automagically" above, I also get to say that this app is GAMIFIED. By finishing this site, you'll earn a SWEET BADGE that certifies you as an official Rails Master. Go update your Twitter bio, you!

## Contributing

Help building a list of must-know Rails features is greatly appreciated! Part of my motivation for building this is to make it easier for _me_ to know what to build next as I learn Rails.

## Under the hood

This app uses parsing expression grammars (PEGs) using the [Treetop DSL](http://treetop.rubyforge.org/) to identify which features have been used in a Rails-shaped repo. A PEG is essentially a fancy regex. Treetop's site provides a fantastic introduction to custom parsers.
