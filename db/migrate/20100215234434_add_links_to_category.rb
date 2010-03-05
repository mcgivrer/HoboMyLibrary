class AddLinksToCategory < ActiveRecord::Migration
  def self.up
    add_column :books, :category_id, :integer

    add_index :books, [:category_id]
  end

  def self.down
    remove_column :books, :category_id

    remove_index :books, :name => :index_books_on_category_id rescue ActiveRecord::StatementInvalid
  end
end
