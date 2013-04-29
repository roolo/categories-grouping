# Categories grouping

Has-many bidirectional form demo. This application contains simple 1:N pairing. 
Main thing in this app is to show selecting multiple child items instead of 
selecting one parent item.

Short story `<%= f.select :category_ids, Category.all.collect{|c|[c.name, c.id]}, {}, multiple: true %>` ;)

## Setup
- `bundle install`
- `bundle exec rake db:setup`
- `rails s`
