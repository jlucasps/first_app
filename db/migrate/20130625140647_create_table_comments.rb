class CreateTableComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :bill, :foreign_key => true
      t.column :content, :string, :null => false
      t.timestamps
    end
  end
end
