class AddPictureToMicroposts < ActiveRecord::Migration
  def change
    add_column :entries, :picture, :string
  end
end
