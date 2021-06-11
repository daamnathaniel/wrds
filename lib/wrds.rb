# frozen_string_literal: true



require 'highline/import'
require 'apicake'


require_relative '../wrds/version'
require_relative '../wrds/cli'
require_relative '../wrds/api'


module Wrds
  VERSION = "0.1.0"

  class Error < StandardError; end

  class Questions; end

  class Parameters; end
end
