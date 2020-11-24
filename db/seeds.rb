# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Alternative.delete_all
Mistake.delete_all

CSV.foreach(Rails.root.join('lib/biases.csv'), headers: true) do |row|
  @mistake = Mistake.create(mistaken_word: row["mistake"])
  @mistake.save

  @alternative1 = Alternative.create(mistake: @mistake, alternative_word: row["alternative1"])
  @alternative1.save

  @alternative2 = Alternative.create(mistake: @mistake, alternative_word: row["alternative2"])
  @alternative2.save

  @alternative3 = Alternative.create(mistake: @mistake, alternative_word: row["alternative3"])
  @alternative3.save

  @alternative4 = Alternative.create(mistake: @mistake, alternative_word: row["alternative4"])
  @alternative4.save

  @alternative5 = Alternative.create(mistake: @mistake, alternative_word: row["alternative5"])
  @alternative5.save
end
