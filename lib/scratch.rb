# Separate the construction of a complex object from its representation so that
# the same construction process can create different representations
require 'blanket'


class RequestBuilder
  def initialize(api:nil, endpoint:nil, constraint:nil, variable:nil)
    @request = Request.new
    @request.api = api
    @request.endpoint = endpoint
    @request.constraint = constraint
    @request.variable = variable
  end

  def set_api(api_choice)
    @request.api = api.new(api_choice) 
  end

  def set_endpoint(endpoint)
    @request.endpoint = endpoint
  end

  def set_constraint(constraint)
    @request.constraint = constraint
  end

  def set_variable(variable)
    @request.variable = variable
  end

  def request
    @request
  end
end

class Request
  attr_accessor :api, :endpoint, :constraint, :variable
end



class API
  attr_accessor :base_uri
  attr_reader :wrap
  
  def initialize(base_uri)
    @base_uri = base_uri
    @wrap = Blanket::wrap(base_uri)
  end
end

class Datamuse < API; end



class Endpoint; end
class Words < Endpoint; end
class Sug < Endpoint; end




# Usage
builder = RequestBuilder.new
request = builder.request

damu = Datamuse.new("https://api.datamuse.com").wrap






