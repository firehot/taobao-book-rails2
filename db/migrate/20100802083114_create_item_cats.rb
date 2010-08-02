class CreateItemCats < ActiveRecord::Migration
  def self.up
    create_table :item_cats,:id => false do |t|
      t.integer :cid,:null => false
      t.integer :parent_cid
      t.string :name,:null => false
      t.boolean :is_parent
      t.string :status
      t.integer :sort_order

      t.timestamps
    end
    #添加自定义主键
    execute "ALTER TABLE item_cats ADD PRIMARY KEY (cid)"

  end

  def self.down
    drop_table :item_cats
  end
end
