class DeleteKudosTable < ActiveRecord::Migration
  def up
  	drop_table :kudos
  end

  def down
  	create_table :kudos do |t|
  		t.integer :score
  		t.integer :post_id

  		t.timestamps
  	end
  end
end
