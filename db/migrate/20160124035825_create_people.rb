class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :names
      t.string :lastname
      t.string :mothername
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
