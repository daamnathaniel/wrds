class Wrds::CLI
  include Wrds::Actions
  include Wrds::Sentences

  def initialize
  	@api = Wrds::API.new
  	@request = Wrds::Request.new
  	@query = Wrds::Query.new
  	@words = Wrds::Words.new
  end

  def call
  	say(greeting)
  	show(main_options)
    gather(direction)
    show(results)
  end

end