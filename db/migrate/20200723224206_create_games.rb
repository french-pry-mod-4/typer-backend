class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :userId
      t.integer :passageId
      t.integer :speed
      t.integer :accuracy

      t.timestamps
    end
  end
end
