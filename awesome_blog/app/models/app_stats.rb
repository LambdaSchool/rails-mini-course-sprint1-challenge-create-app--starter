require_relative "./word_count.rb"
class AppStats
  attr_reader :posts, :quotes
  include WordCounter
  def initialize
    @posts = Post.all
    @quotes = Quote.all
  end
  
  def posts_count
    posts.count
  end

  def quotes_count
    quotes.count
  end

  def posts_word_count
    posts.reduce(0) { |sum, num| sum + num.word_count }
  end
  
  def quotes_word_count 
    quotes.reduce(0) { |sum, num| sum + num.word_count }
  end

  def total_count
    quotes_count + quotes_count
  end

  def total_word_count
    posts_word_count + quotes_word_count
  end

end