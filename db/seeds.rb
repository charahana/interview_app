# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all

Question.create!(
  content: "インフラエンジニアとは？",
  answer: "システムの基盤を設計・構築・運用するエンジニア",
  category: "基礎"
)

Question.create!(
  content: "なぜインフラエンジニアを志望するのか？",
  answer: "安定稼働を支える役割に魅力を感じたため",
  category: "志望動機"
)