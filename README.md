## Rails Mastery

To really understand Rails, you have to build lots of projects in Rails. You have all sorts of ideas...

* A private journaling app
* A TV show fantasy league generator
* A shirt subscription website

And tons more. Rails is awesome! You're definitely better than when you started. But now you want to take on projects more systematically, specifically to expand your knowledge of Rails. But where to begin? You don't know what you don't know.

Which provides a convenient segue into this project's purpose: to provide a list of things about Rails that you don't know you didn't know. Connect your existing Rails projects and it'll automagically scan for evidence of important Rails features you've already used (polymorphic associations? check. Rendering a JSON API? check) and show you a list of Rails capabilities that you should consider adding to current or future apps (XSS protection, API versioning, fancy routing).

## Buzzwords

In addition to using "automagically" above, I also get to say that this app is GAMIFIED. By finishing this site, you'll earn a SWEET BADGE that certifies you as an official Rails Master that has actually used 100% of the Rails API in various projects. Go update your Twitter bio, you brilliant gem!

## Contributing

Help building a list of must-know Rails features would be greatly appreciated! Part of my motivation for building this is to make it easier for me to know what to build next as _I_ try to master Rails.

## Under the hood

This app uses parsing expression grammars (PEGs) using the [Treetop DSL](http://treetop.rubyforge.org/) to identify which features have been used in a Rails-shaped repo. A PEG is essentially a fancy regex. Treetop's site provides a fantastic introduction to custom parsers, check it out, especially if you want more buzzword cred.
