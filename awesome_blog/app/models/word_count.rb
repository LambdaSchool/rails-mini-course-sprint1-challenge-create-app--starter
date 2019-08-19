module WordCounter 
  def word_count
    if body.nil?
      0
    else
      body.split(' ').size
    end
  end
end