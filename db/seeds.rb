# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gem "byebug"

InputMistake.delete_all
Alternative.delete_all
Mistake.delete_all

list = [
    {
        :mistake => "mankind",
        :alternatives => ["humankind", "humanity"]
    },
    {
        :mistake => "chairman",
        :alternatives => ["chair", "chairperson"]
    },
]

list.each do |item|
  @mistake = Mistake.create(mistaken_word: item[:mistake])
  @mistake.save
  item[:alternatives].each do |alternative|
    @alternative = Alternative.create(mistake: @mistake, alternative_word: alternative)
    @alternative.save
  end
end
