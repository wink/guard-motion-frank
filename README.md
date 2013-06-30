# guard-motion-frank

Guard gem for [motion-frank](https://github.com/cyrusinnovation/motion-frank).    
guard-motion-frank will automatically run your [frank-cucumber](http://www.testingwithfrank.com/) features for iOS when using [RubyMotion](http://www.rubymotion.com/) and the [motion-frank](https://github.com/cyrusinnovation/motion-frank) gem.    

## Installation

    $ gem install motion-frank
    $ gem install guard-motion-frank
    
or install with Bundler by adding these lines to your Gemfile:

    gem 'motion-frank'
    gem 'guard-motion-frank'
then run:

    $ bundle install
    
Lastly, you need to add the following line to your Rakefile in order to enable the included rake tasks.

    require 'guard/motion-frank/task'
    

## Usage

When you're done, run the following commands from your project directory

    $ guard init motion-frank
    $ guard  

## Guard options

No options supported yet.