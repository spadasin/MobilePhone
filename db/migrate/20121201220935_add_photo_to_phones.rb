class AddPhotoToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :photo, :string

  end
end
