class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.text :title
      t.text :dec

      t.timestamps
    end
  end
end
