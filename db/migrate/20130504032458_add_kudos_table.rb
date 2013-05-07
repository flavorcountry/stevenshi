class AddKudosTable < ActiveRecord::Migration
  def up
  	create_table :kudos do |t|
  		t.integer :score
  		t.integer :post_id

  		t.timestamps
  	end
  end

  def down
  	drop_table :kudos
  end
end
