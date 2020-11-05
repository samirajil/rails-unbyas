class CreateMistakes < ActiveRecord::Migration[6.0]
  def change
    create_table :mistakes do |t|
      t.string :mistaken_word

      t.timestamps
    end
  end
end
