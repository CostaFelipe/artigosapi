class CreateArtigos < ActiveRecord::Migration[6.0]
  def change
    create_table :artigos do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps
    end
  end
end
