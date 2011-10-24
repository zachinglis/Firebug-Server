class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :url
      t.text :content
      t.string :context
      t.timestamps
    end
  end
end
