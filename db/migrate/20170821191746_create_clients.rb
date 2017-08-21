class CreateClients < ActiveRecord::Migration[5.1]
  def change
  	create_tale :client do |t|
  		t.text :name
  		t.text :phone
  		t.text :datestamp
  		t.text :barber
  		t.text :color

  		t.timestamps
  	end

  end
end
