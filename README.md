## Toolbus

The best way to learn your tools is to build lots of things with your tools. But coming up with projects that actually bring you closer to that goal isn't straightforward:

* What if you're a beginner? You don't know what you don't know. Status quo is to haphazardly take on projects and learn solutions to whatever problems you run into - if you run into any.
* What if you accidentally build the same app 5 times, using the same 20% of your tool's API? Do you really have 5 app's worth of experience, or just 1?

To help inspire variety in projects and accelerate your journey towards stack mastery, this project will show you your progress towards utilizing the entire API surface area of your tools. This is especially great for beginners who don't know what to build next!

## Contributing

Help building a list of must-know features for any tool would be greatly appreciated! Especially, at the start, for Rails, Node.js, Ember.js, and anything else. Currently, only Rails is supported.

## Under the hood

This app uses parsing expression grammars (PEGs) using the [Treetop DSL](http://treetop.rubyforge.org/) to identify which features have been used in a Rails-shaped repo. A PEG is essentially a fancy regex. Treetop's site provides a fantastic introduction to custom parsers, check it out, especially if you like to drop fancy buzzwords.
