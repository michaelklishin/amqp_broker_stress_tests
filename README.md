# AMQP broker stress tests #

## Getting started ##

You'd need to have Ruby and RubyGems installed. The recommended way is [RVM](https://rvm.beginrescueend.com/) since it is completely
isolated from the rest of the system and can be wiped out with one command (rvm implode).

Given you have Ruby 1.9.2 (it comes with RubyGems out of the box) installed via RVM, install [Bundler](http://gembundler.com/):

    gem install bundler

and then pull down dependencies from the repository root:

    bundle install --local



## Running scripts ##

Run them prefixed with bundle exec:

    bundle exec ./scripts/[script name].rb



## License ##

Copyright (c) 2011, Michael S. Klishin

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.