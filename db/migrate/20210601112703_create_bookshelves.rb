class CreateBookshelves < ActiveRecord::Migration[6.1]
  def change
    create_table :bookshelves do |t|
      t.text :title
      t.text :author
      t.text :class_number
      t.text :link

      t.timestamps
    end
  end
end
