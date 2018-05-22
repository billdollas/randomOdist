class CreateOdists < ActiveRecord::Migration[5.2]
  def change
    create_table :odists do |t|
      t.text :poetry

      t.timestamps
    end
  end
end
