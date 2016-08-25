class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :affil
      t.string :hear

      t.timestamps
    end
  end
end
