# students =     [ "Peter", "Mary", "Emma", "Kiki" ]
# student_ages = [ 24     , 25    ,  20    , 21]

# print "Peter is 24 years old!"

# students.each_with_index do |student, index|
#   puts "#{student} is #{student_ages[index]} years old"
# end

students = {
  'Peter' => 24,
  'Mary' => 25,
  'Emma' => 20,
  'Kiki' => 21
}

# Reading
students['Peter'] # => 24
students['Emma'] # => 24
students['Kiki'] # => 24

# Creating
students['Scooter'] = 100

p students

# Update
students['Peter'] = 25

# Delete

students.delete('Peter')

students.each do |name, age|
  # puts "This is the key: #{name}, and value: #{age}"
  # puts '=' * 50
end

students.has_key?('Kiki') # => boolean
students.has_key?('Ryan')

students.keys # => array of keys
students.values # => array of values

cities = [['London', 'UK', 'London Eye'], ['Paris', 'France', 'Eiffle Tower'],
          ['Cape Town', 'South Africa', 'Table Mountain']]

p cities[2][2]
p cities[0][1]

hash_cities = {
  'London' => { 'country' => 'UK', 'landmark' => 'London Eye' },
  'Paris' => { 'country' => 'France', 'landmark' => 'Eiffle Tower' },
  'Cape Town' => { 'country' => 'South Africa', 'landmark' => 'Table Mountain', 'population' => 4_600_000 }
}

hash_cities_with_symbols = {
  'London' => { country: 'UK', landmark: 'London Eye' },
  'Paris' => { country: 'France', landmark: 'Eiffle Tower' },
  'Cape Town' => { country: 'South Africa', landmark: 'Table Mountain', population: 4_600_000 }
}

p hash_cities_with_symbols['London'][:country]
