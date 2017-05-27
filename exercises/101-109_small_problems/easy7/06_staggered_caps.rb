# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

def staggered_case(string)
  letters = string.chars
  uppercase = true
  counter = 0
  result = ''

  loop do
    break if counter == letters.size

    current_letter = letters[counter]

    if current_letter.match(/[a-z]/i)
      uppercase ? result << current_letter.upcase : result << current_letter.downcase
      uppercase = !uppercase
    else
      result << current_letter
    end

    counter += 1
  end

  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
