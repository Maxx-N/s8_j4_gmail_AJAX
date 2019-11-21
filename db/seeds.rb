require 'faker'
Email.destroy_all

5.times do |index|
  Email.create(
    id: index + 1,
    object: Faker::Company.unique.industry,
    body: Faker::ChuckNorris.unique.fact
  )
end

puts "5 emails ont été créés :"
tp Email.all, :object, :body
