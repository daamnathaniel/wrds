# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "wrds"

require 'minitest/autorun'
require 'vcr'



VCR.configure do |c|
	c.casette_library_dir = "test/fixtures"
	c.hook_into :webmock
end

