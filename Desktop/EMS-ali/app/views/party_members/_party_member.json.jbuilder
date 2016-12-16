json.extract! party_member, :id, :name, :phone_1, :phone_2, :cnic, :address, :avatar, :party_id, :created_at, :updated_at
json.url party_member_url(party_member, format: :json)