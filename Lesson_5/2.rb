books = [
  { title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967' },
  { title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925' },
  { title: 'War and Peace', author: 'Leo Tolstoy', published: '1869' },
  { title: 'Ulysses', author: 'James Joyce', published: '1922' }
]

# SOLUTION 1
books.sort do |hash1, hash2|
  hash1[:published] <=> hash2[:published]
end

# SOLUTION 1
# books.sort_by do |hash|
#   hash[:published]
# end
