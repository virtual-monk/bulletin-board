# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(category: "Concert")
Category.create(category: "Play")
Category.create(category: "Film")
Category.create(category: "Visual Arts")
Category.create(category: "Party")
Category.create(category: "Comedy Show")
Category.create(category: "Family/kids")


Event.create(title: "This other cool awesome wicked party", details: "18+ $10 at the door",
  user_id: 1, category_id: 5, address: "550 Arsenal St", city: "Watertown",
  state: "MA", zip_code: "02134", date: Date.strptime('04/28/2015', '%m/%d/%Y'), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "Boston Indie Movie Festival", details: "Come support your
  local film makers at the showcase",
  user_id: 3, category_id: 3, address: "33 Harrison Ave", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/20/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "Art show", details: "Showcasing the works of Art Artstofolous",
  user_id: 4, category_id: 4, address: "401 Park St", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/25/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "King Lear", details: "Boston College presents King Lear",
  user_id: 1, category_id: 2, address: "44 Charles St", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/13/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "House party", details: "BYOB or whateva $5 at the door",
  user_id: 1, category_id: 5, address: "1 Central Wharf", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/12/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "The Kinks", details: "21+ $24 at the door",
  user_id: 4, category_id: 1, address: "559 Washington St", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/28/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "Avenue Q", details: "The greatest musical you'd ever want
  to see",
  user_id: 2, category_id: 2, address: "667 E Broadway", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/10/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "The Book of Mormon", details: "Even better than the
  greatest musical you'd ever want to see",
  user_id: 1, category_id: 2, address: "46 Englewood Ave", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/16/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "The Boston Underground", details: "Punk/funk and everything
  in between 18+ $10 at the door",
  user_id: 1, category_id: 1, address: "973 Commonwealth Avenue", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/28/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "The coolest event ever", details: "18+ $10 at the door",
  user_id: 1, category_id: 5, address: "175 Tremont St", city: "Boston",
  state: "MA", zip_code: "02134", date: Date.strptime("04/30/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "The Zombie Toxic Event", details: "18+ $10 at the door",
  user_id: 1, category_id: 1, address: "290 Harvard St", city: "Brookline",
  state: "MA", zip_code: "02134", date: Date.strptime("04/11/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "This wild concert", details: "18+ $10 at the door",
  user_id: 1, category_id: 1, address: "355 Binney St", city: "Cambridge",
  state: "MA", zip_code: "02134", date: Date.strptime("04/08/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
Event.create(title: "Frozen on Ice", details: "All ages allowed $10 at the door",
  user_id: 1, category_id: 7, address: "100 Cambridgeside Pl", city: "Cambridge",
  state: "MA", zip_code: "02134", date: Date.strptime("04/02/2015", "%m/%d/%Y"), start_time: "18:00:00",
  end_time: "20:00:00")
