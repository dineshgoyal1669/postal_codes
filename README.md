# PostalCodes

A gem to provide details related to postal code(country, state, locality, calling_code, country_code).


Currently it is having data only for India and USA.I will be updating for more countries as well

## Installation

Add this line to your application's Gemfile:

    gem 'postal_codes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install postal_codes

## Usage

To Find information of postal code :

	PostalCodes.find_all(110094)

It will return the array of Hash:

	[{"country"=>{"name"=>"India", "calling_code"=>"+91", "alpha_2_code"=>"IN", "alpha_3_code"=>"IND", "numeric_code"=>"356"}, "state"=>"DELHI", "locality"=>"New Delhi"}]
	
In rare case if a postal code present in more than one country then it will display result as follows :

	[{"country"=>{"name"=>"India", "calling_code"=>"+91", "alpha_2_code"=>"IN", "alpha_3_code"=>"IND", "numeric_code"=>"356"},"state"=>"DELHI", "locality"=>"New Delhi"}, {"country"=>{"name"=>"USA","calling_code"=>"+1","alpha_2_code"=>"US", "alpha_3_code"=>"USA", "numeric_code"=>"840"},"state"=>"Alabama", "locality"=>"Moody"}]

## Contributing

1. Fork it ( https://github.com/[my-github-username]/postal_codes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
