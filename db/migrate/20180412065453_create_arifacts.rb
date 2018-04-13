class CreateArifacts < ActiveRecord::Migration[5.1]
  def change
    create_table :arifacts do |t|
      t.string :name
      t.string :key
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
