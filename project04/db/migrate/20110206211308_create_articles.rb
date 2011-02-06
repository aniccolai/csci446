class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author_name
      t.text :body
      t.date :creation_date
      t.integer :number_of_edits

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
