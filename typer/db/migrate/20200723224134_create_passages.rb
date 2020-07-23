class CreatePassages < ActiveRecord::Migration[6.0]
  def change
    create_table :passages do |t|
      t.text :text
      t.string :language
      t.integer :skill_level
      t.integer :time_alloted

      t.timestamps
    end
  end
end
