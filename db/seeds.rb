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

# 新建 10 篇文章并且为每个 photo 新建 5 comments
if Article.all.count == 0
  10.times do |i|
    article = Article.create!(
         name: Faker::Lorem.words(3).join(' '),
      content: Faker::Matz.quote
    )
    5.times do |i|
      article.comments.create!(content: Faker::Movie.quote)
    end
    print "*"
  end
  puts "\n新建 10 篇文章并且为每个 photo 新建 5 comments"
end

# 新建 10 photos 并且为每个 photo 新建 5 comments
if Photo.all.count == 0
  10.times do |i|
    fake_name = Faker::Lorem.words(1..3)
    photo = Photo.create!(
          name: fake_name.join(' '),
      filename: "#{fake_name.join('_')}.jpg"
    )
    5.times do |i|
      photo.comments.create!(content: Faker::Movie.quote)
    end
    print "*"
  end
  puts "\n新建 10 photos 并且为每个 photo 新建 5 comments"
end

# 新建 10 events 并且为每个 event 新建 5 comments
if Event.all.count == 0
  10.times do |i|
    event = Event.create!(
             name: Faker::Lorem.words(2..4),
        starts_at: i.days.from_now,
          ends_at: (i + 2).days.from_now,
      description: Faker::Lorem.paragraphs.join("\n")
    )
    5.times do |i|
      event.comments.create!(content: Faker::Matz.quote)
    end
    print "*"
  end
  puts "\n新建 10 events 并且为每个 event 新建 5 comments"
end
