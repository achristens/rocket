require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_name
    @rocket.name = "Cayenne"
    result = @rocket.name
    expected = "Cayenne"
    assert_equal(expected, result)
  end

  def test_flying_true
    @rocket.lift_off
    result = @rocket.flying?
    expected = true
    assert_equal(expected, result)
  end

  def test_lift_off
    result = @rocket.lift_off
    expected = true
    assert_equal(expected, result)
  end

  def test_lift_off_false
    @rocket.lift_off
    result = @rocket.lift_off
    expected = false
    assert_equal(expected, result)
  end
end
