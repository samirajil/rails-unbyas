class CreateAlternatives < ActiveRecord::Migration[6.0]
  def change
    create_table :alternatives do |t|
      t.references :mistake, null: false, foreign_key: true

      t.timestamps
    end
  end
end
