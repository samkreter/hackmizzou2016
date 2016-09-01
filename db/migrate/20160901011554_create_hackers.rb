class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :name
      t.string :school
      t.string :email
      t.attachment :resume
      t.string :interest

      t.timestamps
    end
  end
end
