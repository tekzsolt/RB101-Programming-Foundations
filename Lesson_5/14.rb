hsh = {
    'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
    'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
    'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
    'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
    'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map {|colour| colour.capitalize}
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

