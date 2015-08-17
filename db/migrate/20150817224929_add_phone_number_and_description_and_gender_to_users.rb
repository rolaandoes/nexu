class AddPhoneNumberAndDescriptionAndGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :description, :text
    add_column :users, :gender, :string
  end
end
