require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  #split the string on any and all periods, question marks and exclamation marks.
  def count_sentences
    # binding.pry

=begin 
  /\.|\?|!/ this syntax for .split was found @https://stackoverflow.com/questions/32451429/count-number-of-sentence-ruby
  self.split(/\.|\?|!/) splits string at . ? ! and returns an array
  but ^^ also returns an array with empty ("") elements
  .reject{|x| x.empty?} returns an array with empty elements removed
  .count returns # of strings which are sentences
=end 

    #solution
    self.split(/\.|\?|!/).reject{|x| x.empty?}.count
    
    
  end
end