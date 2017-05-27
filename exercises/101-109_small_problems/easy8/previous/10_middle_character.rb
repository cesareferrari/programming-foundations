def center_of(string)
  if string.length.odd?
    string[string.length / 2]
  else
    string[(string.length / 2 - 1), 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
