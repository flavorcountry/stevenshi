class CreatePortfolio < ActiveRecord::Migration
  def up
  	create_table :portfolios do |t|
  		t.string :name
  		t.text   :description
  		t.string :url
  		
  		t.timestamps
  	end
  end

  def down
  end
end
