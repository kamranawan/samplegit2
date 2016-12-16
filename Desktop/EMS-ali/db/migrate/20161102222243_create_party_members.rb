class CreatePartyMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :party_members do |t|
      t.string :name
      t.string :phone_1
      t.string :phone_2
      t.string :cnic
      t.string :address
      t.attachment :avatar
      t.references :party, foreign_key: true

      t.timestamps
    end
  end
end
