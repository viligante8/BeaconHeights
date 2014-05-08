# encoding: utf-8
Event.delete_all
AmberAlert.delete_all
Attraction.delete_all

Event.create(:name => 'Colour Revolt Concert',
	:event_date => '31-OCT-2010',
	:event_time => '2010-05-01 19:30:00',
	:arena => 'Amphitheater',
	:performers => 'Colour Revolt, Old World Underground, Jacks Mission',
	:description => 'Colour Revolt takes the stage at the Amphitheater to rock your faces off! Featuring Old World Underground and our very own Jacks Mission!',
	:event_type => 'Music')

Event.create(:name => 'Tigers, Oh My!',
	:event_date => '22-NOV-2010',
	:event_time => '2010-05-01 14:00:00',
	:arena => 'Tiger\'s Arena',
	:performers => 'Tigers!',
	:description => 'Come see these majestic animals do tricks!',
	:event_type => 'Animal',
	:frequency => 'Weekly')

Event.create(:name => 'AC/DC',
	:event_date => '02-DEC-2010',
	:event_time => '2010-05-01 20:00:00',
	:arena => 'Amphitheater',
	:performers => 'AC/DC!',
	:description => 'Back in black!',
	:event_type => 'Music')

Event.create(:name => 'Sea Turtle Splash-tastic!',
	:event_date => '30-NOV-2010',
	:event_time => '2010-05-01 12:00:00',
	:arena => 'Turtle Pond',
	:performers => 'Mrs. Splashy',
	:description => %{Come watch the turtles swim and bask! Talk to experts about turtles and learn about the dangers to sea turtles. <b>Show is everyday except Sunday.</b>},
	:event_type => 'Animal',
	:frequency => 'Daily')
	


AmberAlert.create(:name => 'Lily Smith',
  :age => 7,
  :sex => 'F',
  :race => 'White',
  :hairColor => 'Black',
  :description => 'Last seen wearing a red shirt and jean shorts. She is about 4 feet tall with brown eyes. Hair is in pigtails.',
  :lastSeenLocation => 'Outside the Frog Pond bumper boats',
  :lastSeenTime => '2010-01-01 12:45:00',
  :submitTime => '2010-01-01 13:00:00')
  
AmberAlert.create(:name => 'Bradley Wright',
  :age => 9,
  :sex => 'M',
  :race => 'Black',
  :hairColor => 'Brown',
  :description => 'Bradley was last seen wearing a blue hat, white shirt, and a dinosaur backpack. He is 4\' 10" tall.',
  :lastSeenLocation => 'At the Tea Cup ride with his 4 year old sister',
  :lastSeenTime => '2010-01-01 08:00:00',
  :submitTime => '2010-01-01 08:10:00')



Attraction.create(:name => 'Terror Underground',
	:attraction_type => 'Thrill',
	:description => %{Head underground with this world famous roller coaster!},
	:min_height => 60,
	:is_fastpass => 1,
	:max_tix_hour => 40,
	:wait_time => 45,
	:photo => 'terror.png')

Attraction.create(:name => 'Loopy Dragon',
  :attraction_type => 'Thrill',
  :description => %{Fly like the dragons in this exciting roller coaster!},
  :min_height => 60,
  :is_fastpass => 1,
  :max_tix_hour => 20,
  :wait_time => 30,
  :photo => 'peoplecoaster.png')

Attraction.create(:name => 'Fun Confusion',
	:attraction_type => 'Family',
	:description => %{Find your way through this maze of fun!},
	:is_fastpass => 0,
	:wait_time => 0,
	:photo => 'mazegirl.png')

Attraction.create(:name => 'Blaster Bumper Boats',
	:attraction_type => 'Kids',
	:description => %{Let the kids have some splashing fun in our bumper boats!},
	:min_height => 48,
	:is_fastpass => 1,
	:max_tix_hour => 10,
	:fee => 0.0,
  :wait_time => 0,
  :photo => 'bumperboats.png')

Attraction.create(:name => 'Splash Factory',
	:attraction_type => 'Water',
	:description => %{Take your raft through the Splash Factory!},
	:min_height => 48,
	:is_fastpass => 1,
	:max_tix_hour => 30,
	:fee => 2.00,
  :wait_time => 0,
  :photo => 'raft.png')
	
Attraction.create(:name => 'Tea Cups',
  :attraction_type => 'Family',
  :description => %{Take the kids for a spin in our fantastic tea cups!},
  :min_height => 0,
  :is_fastpass => 0,
  :wait_time => 0,
  :photo => 'teacups.png')
  
Attraction.create(:name => 'Carousel of Magic',
  :attraction_type => 'Family',
  :description => %{Relax in a fantasy world as you ride unicorns and other magical creatures!},
  :min_height => 50,
  :is_fastpass => 0,
  :fee => 1.50,
  :wait_time => 0,
  :photo => 'carousel.png')
  
  
