require "test/unit"
require_relative "word_count"

class WordCountTest < Test::Unit::TestCase
  def test_lines_count
    expected_response = 13
    generated_response = WordCount.new(file_name: 'file.txt').line_count
    assert_equal expected_response, generated_response
  end

  def test_word_count
    expected_response = 511
    generated_response = WordCount.new(file_name: 'file.txt').word_count
    assert_equal expected_response, generated_response
  end

  def test_char_count
    expected_response = 3090
    generated_response = WordCount.new(file_name: 'file.txt').char_count
    assert_equal expected_response, generated_response
  end

  def test_count_all
    expected_line_count = 13
    expected_word_count = 511
    expected_char_count = 3090
    word_command = WordCount.new(file_name: 'file.txt')
    assert_equal expected_word_count, word_command.word_count
    assert_equal expected_line_count, word_command.line_count
    assert_equal expected_char_count, word_command.char_count
  end
end
