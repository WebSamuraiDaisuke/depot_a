# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(title: 'Rubyの本', image_url: 'ruby.jpg',
               description: 'Ruby入門書。とっても便利', price: '5000')
Product.create(title: 'Rubyステップアップ', image_url: 'ruby2.jpg',
               description: 'Ruby中級者の本。基本を据えている人用', price: '6000')
Product.create(title: 'Ruby on Rails入門', image_url: 'RoR.jpg',
               description: 'Ruby on Rails入門書。これが無いと始まらない', price: '5000')
Product.create(title: 'Ruby on Railsテスト方法', image_url: 'RoR2.jpg',
               description: 'Ruby on Rails のテストを学ぶための本', price: '3000')
Product.create(title: 'Ruby on Railsマスター', image_url: 'RoR3.jpg',
               description: 'Ruby on Railsの上級者向けの本。これでRoRの全能になれる', price: '5000')
