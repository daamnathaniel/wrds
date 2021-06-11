# frozen_string_literal: true

require "test_helper"

class WrdsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Wrds::VERSION
  end
end


class WrdsCLI < Minitest::Test
  def test_that_cli_class_exists
    assert Wrds::CLI
  end
end


class WrdsAPI < Minitest::Test
  def test_that_api_class_exists
    assert Wrds::API
  end
end



