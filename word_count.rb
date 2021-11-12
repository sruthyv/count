require 'pry'

class WordCount
  def initialize(file_name:)
    @file_name = file_name
    @file_data = File.open(@file_name).read
  end

  def call
    puts line_count
    puts word_count
    puts char_count
  end

  def line_count
    @file_data.count("\n")
  end

  def word_count
    str = @file_data
    str.split(' ').count
  end

  def char_count
    str = @file_data
    str.split('').count
  end
end
WordCount.new(file_name: ARGV[0]).call
