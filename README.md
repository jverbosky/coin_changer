## Coin Changer ##

A web app developed using Ruby, Sinatra, HTML and CSS for calculating (and displaying) change based on the input number.

----------

**Running the App**

----------

To run the coin changer app locally:

1. Make sure that [Ruby](https://www.ruby-lang.org/en/documentation/installation/) is installed.
2. Make sure that the [Sinatra](https://github.com/sinatra/sinatra) gem is installed.  *Note that installing the Sinatra gem will install other gems necessary to run the game locally, such as rack.*
3. Navigate to the directory which contains **app.rb** in a terminal (command prompt) session.
4. Run the following command to launch the Sinatra web server:

	ruby app.rb

To open the app locally once it is running, use the following URL:

[http://localhost:4567](http://localhost:4567/)

----------

**Making Change**

----------

To determine highest value coins (change) for a value, do the following:

1. Specify a number in the input field.
2. Select the **Submit** button.
3. The appropriate change will be listed on the subsequent page.

----------

**Unit Tests Overview**

----------

Tests have been developed to verify that the method used by the app is working as intended.

Unit Tests:

- **test\_coin_changer.rb** > **coin_changer.rb** (3 tests)

----------

**Running Unit Tests**

----------

Unit tests can be run by doing the following:

1. Navigate to the directory which contains **app.rb** in a terminal (command prompt) session.
2. Run the following command for the unit test file:<br>

    ruby test\_coin_changer.rb

The resulting output will indicate the success of the unit tests:

	Run options: --seed 9724

	# Running:

	...

	Finished in 0.002780s, 1079.2698 runs/s, 1079.2698 assertions/s.

	3 runs, 3 assertions, 0 failures, 0 errors, 0 skips

----------

Enjoy!