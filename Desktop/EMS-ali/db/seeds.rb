# arr_photo = ["https://www.telework.gov/images/employee.png", "https://pbs.twimg.com/profile_images/639224947051593728/bfo2vfPq.jpg","https://www.westernhealth.com/wha/cache/file/54E03103-8DB7-4701-B7514383C046F807_width370.jpg","http://americanjourney2.com/wp-content/uploads/2016/09/employee.png","http://www.flat6labs.com/wp-content/uploads/2013/05/employee-appreciation-plan2.jpg"]
# 1000.times do |variable|
# 	Employ.create(full_name: Faker::Name.name , father_name: Faker::Name.name ,
#  dob: Faker::Date.between(120000.days.ago, Date.today) ,
#  gender: rand(2) , cnic: Faker::Code.ean.to_s , address: "#{Faker::Address.street_address} #{Faker::Address.country}",
#  material_status: rand(2)  ,designation: ["Cliper","Helper","Accountant","Operater"].sample,
#   basic_salary: [10000,12000,9000,13000,20000,45000,12500,15000].sample ,
#   avatar_file_name: arr_photo.sample
#  )
#  puts variable	
# end

# Employ.all.each do |e|
# 	e.update_attributes(phone_1: Faker::PhoneNumber.cell_phone, phone_2: Faker::PhoneNumber.cell_phone)
# 	puts "Updated #{e.id}"	
# end

# arr = ["{4:1},{5:2},{10:1},{11:2},", "{7:1},{12:2},{10:1}," , "{8:1},{9:2},{13:1}," , "{3:1},{6:2},{8:1},"]
# 10.times do
# 	Attandance.create(employ_ids: arr.sample , created_at: Faker::Date.between(30.days.ago, Date.today) , updated_at: Faker::Date.between(30.days.ago, Date.today))
# end

# 10.times do
# 	Party.create(name: Faker::Name.name ,ph_no: Faker::PhoneNumber.cell_phone ,
#  	avatar_file_name: arr_photo.sample , address: "#{Faker::Address.street_address} #{Faker::Address.city} #{Faker::Address.country}")
# end

# 100.times do
# 	PartyMember.create(name: Faker::Name.name , phone_1: Faker::PhoneNumber.cell_phone  ,
# 	 phone_2: Faker::PhoneNumber.cell_phone , cnic: Faker::Code.ean.to_s,
# 	 address: "#{Faker::Address.street_address} #{Faker::Address.city} #{Faker::Address.country}",
# 	 avatar_file_name: arr_photo.sample , party_id: rand(Party.count))
# end

50.times do

	Stitch.create(machine_id: [5].sample ,
	 date: Faker::Date.between(10.days.ago, Date.today), count: Faker::Number.number(3) ,
	 user_id: 1 , design_id: [1,2,3,4,5,6].sample)
	puts "done"

end

50.times do
	Expence.create(amount: Faker::Number.number(3) ,user_id: 1 , detail: Faker::Name.name , date: Faker::Date.between(120.days.ago, Date.today) )
	puts "done"
end