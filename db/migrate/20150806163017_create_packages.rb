class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :image_uid
      t.string :image_name

      t.timestamps
    end
  end
end
