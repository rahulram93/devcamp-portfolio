# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

4.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "Topics created"

10.times do |blog|
  Blog.create!(
    title: "my blog post #{blog + 1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    topic_id: rand(3) + 1
  )
end
puts "blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "skills created"

8.times do |portfolio_items|
  Portfolio.create!(
    title: "Ruby on rails #{portfolio_items}" ,
    subtitle: "ruby on rails",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

Portfolio.create!(
  title: "angular js 0" ,
  subtitle: "angular",
  body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident",
  main_image: "https://via.placeholder.com/600x400",
  thumb_image: "https://via.placeholder.com/350x200"
)

puts "portfolios created"

4.times do |technology|
  Technology.create(
    :name => "Technology #{technology}",
    :portfolio_id => (rand(9) + 1)
  )
end

puts "Technologies created"
