require 'blanket'
require 'highline/import'



class Request < Struct.new(:base, :endpoint, :constraint, :variable); end

class API < Blanket::Wrapper; end

class Result < OpenStruct;end

class Results
  def initialize(response)
    @results = response.map {|r| Result.new(r)}
  end
end

module RequestBuilder
  attr_reader :request

  def request
    raise "error" if @request == nil
  end

  def base(base_uri)
    @request.base_uri = base_uri
  end

  def endpoint(endpoint)
    @request.endpoint = endpoint
  end

  def constraint(constraint)
    @request.constraint = constraint
  end

  def variable(variable)
    @request.variable = variable
  end

  def request
    @request
  end
end


class Request
  include HTTParty

  base_uri 'api.datamuse.com'

  def self.fetch(**queries)
    get("/words", query: queries, symbolize_names: true)
    resp.parsed_response
  end
end








require 'highline/import'

module Interogative 
  def variable
    ask("which word would you like to base your search on?")
  end
  def constraint
    ask("which constraint would you like your search?")
  end
  def another
    ask("would you like to search again? or quit?")
  end
  def pose_question(this)
    ask(this)
  end
end
module Declarative
  def search
    say("would you like to search for words?")
  end
  def title
    say("wrds helps you find words.")
  end
  def make_statement(this)
    say(this)
  end
end





class Request
    def initialize(base_uri, params)
      @base_uri = base_uri
      @params = params[:params] || {}
     end
  end




  require 'httparty'

class Datamuse
  include HTTParty

  base_uri 'api.datamuse.com'

  def self.words(**kwargs)
    resp = get('/words', query: kwargs)
    resp.parsed_response
  end

  def self.sug(**kwargs)
    resp = get('/sug', query: kwargs)
    resp.parsed_response
  end
end