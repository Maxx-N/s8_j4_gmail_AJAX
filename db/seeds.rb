

Task.destroy_all
Category.destroy_all
Email.destroy_all

require 'faker'

5.times do |index|
  Email.create(
    id: index + 1,
    object: "Email n° #{index +1}",
    body: "#{index +1}" * 6
  )
end

puts "5 emails ont été créés :"
tp Email.all, :object, :body
