class AddFieldsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :github, :string
    add_column :people, :foodres, :string
    add_column :people, :major, :string
  end
end
