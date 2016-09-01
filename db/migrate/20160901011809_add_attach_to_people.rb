class AddAttachToPeople < ActiveRecord::Migration
  def change
    add_attachment :people, :resume
  end
end
