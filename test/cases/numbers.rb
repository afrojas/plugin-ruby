# frozen_string_literal: true

class NumbersTest < Minitest::Test
  def test_numbers
    assert_equal_str '123', 123
    assert_equal_str '-123', -123
    assert_equal_str '1123', 1_123
    assert_equal_str '-543', -543
    assert_equal_str '123456789123456789', 123_456_789_123_456_789
  end

  def test_floats
    assert_equal_str '123.45', 123.45
    assert_equal_str '0.0012', 1.2e-3
  end

  def test_bases
    assert_equal_str '43707', 0xaabb
    assert_equal_str '255', 0o377
    assert_equal_str '-10', -0b1010
    assert_equal_str '9', 0b001_001
  end

  private

  def assert_equal_str(expected, value)
    assert_equal expected, value.to_s
  end
end
