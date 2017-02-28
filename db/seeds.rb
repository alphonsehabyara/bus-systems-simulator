BusRoute.create!([
  {name: "Nayinzira-Kimironko", description: "Very easy to navigate"},
  {name: "Kimironko-Controlle Technique", description: "Very short heading to Amahoro Stadium crossing to the office of Workforce Development Authority"},
  {name: "Kimironko-Nyabugogo", description: "Meet with Kimironk-Controlle Technique route after Amoroho Stadium."},
  {name: "Kimironko-Mumujyi", description: "Crossing Kimihurura all the way to the city center."},
  {name: "Kabuga-Giporoso", description: "Not too long and it crosses the road nearby industrial zones."},
  {name: "Kanombe-Giporoso", description: "From Kanombe miltary forces all the way to the airport and Giporoso."},
  {name: "Giporoso-Nyabugogo", description: "Hudge trafic Jam mainly from Giporoso to Chez Lando. Another Jam can be found at Gishushu. Expect to spend 20 min in the jam during morning of evening hours."},
  {name: "Giporoso-Mumujyi", description: "Hudge trafic Jam mainly from Giporoso to Chez Lando. Another Jam can be found at Gishushu. Expect to spend 20 min in the jam during morning of evening hours."},
  {name: "Giporoso-Kicukiro-Nyanza", description: "You need to go with your smart card of Tap and Pay. Otherwise, you wouldn't ride with KBS to Kicukiro"},
  {name: "Kimironko-Kicukiro-Nyanza", description: "If you cannot speak your mind, you will end up somewhere you don't like. Royal in this route tries to be royal but the drive can drive you where you can be required to ride with moto ot reach your exact destination."},
  {name: "Kicukiro-Gatenga-Mumujyi", description: "It's safe but hudge traffic jam at MAGERWA. You can even spend half an hour in the jam during morning and evening."},
  {name: "Kicukiro-Mumujyi", description: "It's safe but hudge traffic jam at MAGERWA. You can even spend half an hour in the jam during morning and evening."},
  {name: "Kicukiro-Gitwaza-Mumujyi", description: "It's safe but hudge traffic jam at MAGERWA. You can even spend half an hour in the jam during morning and evening."},
  {name: "Kicukiro-Nyabugogo", description: "It's safe but hudge traffic jam at MAGERWA. You can even spend half an hour in the jam during morning and evening."}
])
BusStop.create!([
  {name: "Zindiro", latitude: 30.1301, longitude: 1.9362, stop_order: nil, company_id: 2, bus_route_id: 1}
])
Company.create!([
  {name: "KBS", description: "KBS stands for Kigali Bus Services and it has started its operations in 2012. KBS now offer Twende Smart Cards for Daily Unlimited Pass and Monthly Unlimited Pass. Daily Unlimited Pass are available for RWF 600 and Monthly Unlimited Pass are available for RWF 10,000 and single fare paper ticket is still available for Rwf 250."},
  {name: "RFTC", description: "RFTC stands for Rwanda Federation Transport Cooperatives and it has started its operations in 2011. RFTC is the federation of transport cooperatives in Rwanda, with the vision of protecting social and economic interests of its affiliated members and increase the use of public transport services through the provision of customer-focused, safety and cost-effective passenger transport services using modern vehicles recommended in public transport policy."},
  {name: "Royal Express", description: "Royal Express is a registered transportation company since 2011. The company number is 102496666 and the address 738 KIGALI, gacyamo, Gitega, Nyarugenge, Umujyi wa Kigali "}
])
