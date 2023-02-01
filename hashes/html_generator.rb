def tag(name, text, attributes = {})
  # attributes = { href: "http://lewagon.org", class: "btn" }
  # href='http://lewagon.org'
  # Map the hash => Array i.e. [" class='btn'", " id='enter'"] and then join => " class='btn' id='enter'"
  html_attributes = attributes.map { |key, value| " #{key}='#{value}'" }.join
  "<#{name}#{html_attributes}>#{text}</#{name}>"
end

p tag('h1', 'Hello world')
# => <h1>Hello world</h1>

p tag('h1', 'Hello world', class: 'bold')
# => <h1 class="bold">Hello world</h1>

p tag('a', 'Le Wagon', href: 'http://lewagon.org', class: 'btn', id: 'url')
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
