class AppStats
  include WordCounter
  attr_reader: posts_count, quotes_count, posts_word_count, quotes_word_count, total_count, total_word_count
  def initialize(posts, quotes)
    @posts = posts
    @quotes = quotes
  end

  def posts_counts
    return self.posts.length
  end
  
  def quotes_count
    return self.quotes.length
  end

  def posts_word_count
    return self.word_count(posts)
  end

  def quotes_word_count
    return self.word_count(quotes)
  end

  def total_count
    return (self.posts.length + self.quotes.length)
  end

  def total_word_count
    return (self.word_count(posts) + self.word_count(quotes))
  end

end
