# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Interest.create(topic: "Technology")
# Interest.create(topic: "Outdoors")
# Interest.create(topic: "Games")
# Interest.create(topic: "Parties")
# Interest.create(topic: "Politics")



# 25.times do
#     User.create(
#       name: FFaker::Name.name,
#       phone_number: FFaker::PhoneNumber.phone_number,
#       description: FFaker::HipsterIpsum.sentence(5),
#       gender: FFaker::Gender.random,
#       interest_id: rand(1..5)
#     )
# end


Interest.create(topic: "Technology")
Interest.create(topic: "Outdoors")
Interest.create(topic: "Games")
Interest.create(topic: "Parties")
Interest.create(topic: "Politics")

User.create (id: 6, provider: "facebook", uid: "1702094226687156", name: "Ryde Lacrosse", oauth_token: "CAALdawihdBoBAKABvbwv2kwoyj4j4ZA5hXxdKtDbgzQ5R2czN...", oauth_expires_at: "2015-10-16 14:46:18", created_at: "2015-08-18 01:48:55", updated_at: "2015-08-18 01:48:55", phone_number: nil, description: nil, gender: nil, latitude: "37.7699202", longitude: "-122.4524135")



 User.create (id: 1, provider: "facebook", uid: "10204865938068746", name: "Jon Harlan", oauth_token: "CAALdawihdBoBABtQrH8O7MSCZB0JZBmThUiD74194kEuTnx8C...", oauth_expires_at: "2015-10-16 15:01:49", created_at: "2015-08-17 15:06:16", updated_at: "2015-08-18 21:51:33", phone_number: 248, description: "I love Lacrosse", gender: nil, latitude: "37.80103650912734", longitude: "-122.44235650053272")
# >>>>>>> origin/dev
