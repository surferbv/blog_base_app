class CreateArtilces < ActiveRecord::Migration[5.2]
  def change
    create_table :artilces do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
