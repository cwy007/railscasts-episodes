# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 新建一个用户和 10 个 faker users
if User.all.count == 0
  User.create!(
    email: 'cwy@example.com',
    password: 'password'
  )
  10.times do |i|
    User.create!(
      email: Faker::Internet.email,
      password: 'password'
    )
  end
  puts %{
    初始化一个用户:
    email: 'cwy@example.com'
    password: 'password'
    和 10 个 faker users
  }
end

# 新建 10 篇文章
if Article.all.count == 0
  10.times do |i|
    Article.create!(
      name: Faker::Lorem.words(3).join(' '),
      content: Faker::Matz.quote
    )
    print "*"
  end
  puts "\n新建 10 篇文章"
end
