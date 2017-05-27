def is_letter?(letter)
  letter.match(/[a-zA-Z]/) ? true : false
end

def staggered_case(string)
  result = ''
  count = 0
  upcase = true

  loop do
    break if count == string.size

    current_letter = string[count]

    if is_letter?(current_letter) && upcase == true
      result << string[count].upcase
      upcase = false
    elsif is_letter?(current_letter) && upcase == false
      result << string[count].downcase
      upcase = true
    else
      result << string[count]
    end

    count += 1
  end

  result
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
