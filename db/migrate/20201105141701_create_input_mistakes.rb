class CreateInputMistakes < ActiveRecord::Migration[6.0]
  def change
    create_table :input_mistakes do |t|
      t.references :input, null: false, foreign_key: true
      t.references :mistake, null: false, foreign_key: true

      t.timestamps
    end
  end
end
