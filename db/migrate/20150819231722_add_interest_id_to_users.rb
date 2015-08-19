class AddInterestIdToUsers < ActiveRecord::Migration
  change_table :users do |t|
      
      t.references :interest
  end
end
