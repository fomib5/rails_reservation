# 既存のユーザーを全削除
User.delete_all

# ユーザーを登録
User.create!(name: "shinoharat", password: "password1", email: "aaa@example.com")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
