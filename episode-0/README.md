# 这个 app 可以作为练习的起点来使用

已经完成的功能
```
* 可以使用 Bootstrap 4
* 可以使用 font awesome 符号
* 可以使用 simple_form
* 登录系统 devise
* RSpec 测试
* 可以生产模拟数据 faker
* 查看实体关系图 rails-erd
* 美化 rails console UI，awesome_rails_console
* 预览邮件 letter_opener
* 注释 models & routes， annotate
* ...
```
预装的 gems
```ruby
gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0'
gem "font-awesome-rails"
gem 'simple_form'
gem 'devise'

group :development, :test do
  gem 'rspec-rails', '~> 3.7'
  gem "capybara"
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
end

group :development do
  gem 'rails-erd'
  gem 'awesome_rails_console'
  gem "letter_opener"
  gem 'annotate'
end

# 下面的这些 gems 是在 install gem 'awesome_rails_console' 时，添加进来的
group :development, :test do
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
end
```
