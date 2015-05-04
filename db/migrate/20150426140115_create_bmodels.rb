class CreateBmodels < ActiveRecord::Migration
  def change
    create_table :bmodels do |t|
    	t.string:name
    	t.text:content

      t.timestamps null: false
    end
  end
end
