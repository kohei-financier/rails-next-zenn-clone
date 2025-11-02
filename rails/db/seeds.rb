# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ActiveRecord::Base.transaction do
  user1 = User.create!(name: "テスト太郎", email: "test1@example.com", password: "password", confirmed_at: Time.current)

  user2 = User.create!(name: "テスト次郎", email: "test2@example.com", password: "password", confirmed_at: Time.current)

  15.times do |i|
    Article.create!(title: "テストタイトル1-#{i}", content: "テスト本文1-#{i}", status: :published, user: user1)
    Article.create!(title: "テストタイトル2-#{i}", content: "テスト本文2-#{i}", status: :published, user: user2)
  end
end
