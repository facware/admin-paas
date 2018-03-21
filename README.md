# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# admin-paas
rails generate scaffold Todos account:references name:string number:integer date:date datetime:datetime price:decimal float:float description:text hour:time special:timestamp bool:boolean

rake db:rollback
rails destroy scaffold


## issues
[Flash Toastjs Notices](https://ftovaro.github.io/ruby/rails/bootstrap/notification/flash/toast/alerts/2016/11/19/custom-flash-notifications-with-bootstrap.html)
[Mailer with devise](https://stackoverflow.com/questions/16281254/usermailer-with-devise)

[Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links)