def swap_name(string)
  first, last = string.split(' ')
  "#{last}, #{first}"
end

swap_name('Joe Roberts') == 'Roberts, Joe'
