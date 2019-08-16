module WordCounter
  include Post
  include Quote
  
  def word_count |body|
    if body.nil?
      return 0
    else
      return body.split(' ').size
    end
  end
end