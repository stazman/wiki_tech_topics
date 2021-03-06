Wikihow Tech Topics ("When all you need is the steps")

This gem presents just the steps from the current articles from the Selecting and Buying a Computer page of the Computers and Technology section of www.wikihow.com in list form in a command line interface (CLI). 

## Instructions

The user will be presented with a numbered list of article titles to choose from and be able to access the article's basic steps, some in clearly numbered, multiple methods or parts, through typing in the number of the relevant number. 

To execute the program once it is loaded, type this into your commnad line or terminal:

bin/wikihow_tech_topics


The program file Scraper, which is responsible for doing the scraping of information from pages of www.wikihow.com, contains object methods for easy substitution/addition of specific pages at www.wikihow.co to scrape and include in the gem program. Furthermore, future versions of this gem may encompass articles collected from a greater number of tech-related sites and be searchable based on specific topic keywords.

NOTE: Content for this gem project was scraped directly from the website at https://www.wikihow.com/Category:Selecting-and-Buying-a-Computer as well as from the sites with related article content linked to this website. The gem project complies with Wikihow's Terms of Use, which can be accessed at https://www.wikihow.com/wikiHow:Terms-of-Use.


## Installation

Add this line to your application's Gemfile:

ruby gem 'wikihow_tech_topics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wikihow_text_topics

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dannyd4315/worlds-best-restaurants-cli-gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


