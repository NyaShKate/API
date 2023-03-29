class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :nazva
      t.text :coment
      t.string :status

      t.timestamps
    end
  end
end
