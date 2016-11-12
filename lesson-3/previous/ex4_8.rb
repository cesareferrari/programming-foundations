def my_titleize(string)
  words = string.split
  capitalized_words = []

  words.each do |word|
    capitalized_words << word.capitalize
  end

  capitalized_words.join(' ')
end

class String
  def titleize
    # split.map { |w| w.capitalize }.join(' ')
    split.map(&:capitalize).join(' ')
  end
end

string = 'Nel mezzo del cammin di nostra vita'
puts my_titleize string

uppercase_string = 'NEL MEZZO DEL CAMMIN DI NOSTRA VITA'
puts uppercase_string.titleize
