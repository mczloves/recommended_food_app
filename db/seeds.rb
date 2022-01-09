# frozen_string_literal: true

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE foods RESTART IDENTITY CASCADE")
# 以下，開発用の初期データ
user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

user2.foods.create!(name: "沖縄そば")
user1.foods.create!(name: "海ぶどう")
user3.foods.create!(name: "ゴーヤーチャンプルー")
user3.foods.create!(name: "サーターアンダギー")
user1.foods.create!(name: "タコライス")

puts "初期データの投入に成功しました！"
