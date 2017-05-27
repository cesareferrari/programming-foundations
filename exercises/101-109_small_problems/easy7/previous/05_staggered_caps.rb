def staggered_case(string)
  letters = string.downcase.chars
  staggered = ''

  letters.each_with_index do |letter, index|
    if index.even?
      staggered << letter.upcase
    else
      staggered << letter
    end
  end

  staggered
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
