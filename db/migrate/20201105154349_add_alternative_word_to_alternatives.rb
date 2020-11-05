class AddAlternativeWordToAlternatives < ActiveRecord::Migration[6.0]
  def change
    add_column :alternatives, :alternative_word, :string
  end
end
