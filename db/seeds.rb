# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Bike.create(name: "Speed Concept SLR", brand: "TREK", price: 10200, image_url: "https://media.trekbikes.com/image/upload/w_800,h_600,c_pad,f_auto,fl_progressive:semi,q_auto/SpeedConceptSLR7eTap-24-41499-B-Primary")
Bike.create(name: "Topstone Carbon Apex", brand: "Cannondale", price: 4000, image_url: "https://embed.widencdn.net/img/dorelrl/4ulbzadeik/500px@1x/C23_C15703U_Topstone_Crb_Apex_AXS_ORC_3Q.webp?color=f8f8f8&q=99")
Bike.create(name: "Trance Advanced Pro", brand: "Giant", price: 4500, image_url: "https://images2.giant-bicycles.com/b_white%2Cc_pad%2Ch_400%2Cq_80%2Cw_600/r0fxuemnw74wzxqq9awa/MY22TranceXAdvancedPro291_ColorAStarryNight.jpg")
Bike.create(name: "M150 20'", brand: "Raleigh", price: 4500, image_url: "http://www.raleigh-cycles.com/wp-content/uploads/2016/02/m150-20-r.jpg")
