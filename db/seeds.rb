# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'master@admin.com',
  password: ENV['MASTER']
)

StaticPage.create(
  permalink: 'about',
  company_name: 'E&W Artist Management',
  address: '500 Brickell Avenue PH-03',
  telephone_number: '(305) 332-0429',
  youtube_token: '6jUr0eqGVB4',
  company_bio: 'Bio Coming Soon...'
)

Artist.create(
  name: 'Diego Camejo',
  youtube_token: '6jUr0eqGVB4',
  soundcloud_widget: '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="http://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Fusers%2F2013292&amp;auto_play=false&amp;show_artwork=true&amp;color=9a1c1f"></iframe>',
  bio: 'Diego Camejo is a house music DJ/Producer by night, college student by day. Currently 21 years old, Diego manages a full course load at Boston University along with a hectic touring schedule and countless hours devoted to producing the remixes and tracks that keep the party goers dancing at his various residencies and begun to garner recognition from many respectable blogs. Having only picked up the craft of DJ/Producer in the last year, Diego has remarkably exploded to the epitome of the Miami Club Scene playing and holding residencies at legendary nightclubs’ such as Mansion, SET, Cameo, and Mokai. 
    
    With a background in piano and guitar, Diego’s passion for music has always been evident as he spent endless hours perfecting every classic rock song he came across throughout high school. After his first year of college in Boston University, Diego visited his first nightclub in Miami and was fascinated by the house music that was played at the local clubs. Soon after, he went headlong into the craft of DJ/Producer and now plans to continue to push and refine his skills in order to achieve the next level of success.'
)

Artist.create(
  name: 'Cris Cab',
  youtube_token: 'asE3zMujh1w',
  soundcloud_widget: '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Fusers%2F3066188&amp;color=9a1c1f&amp;auto_play=false&amp;show_artwork=true"></iframe>',
  bio: 'Cris Cab leaps off a couch, playfully taunting a friend during a game of FIFA. It’s a familiar scene for many his age, though not for the 19-year-old whose resume reads like this: mentored by Pharrell Williams; recording partner of Wyclef Jean; support act to O.A.R., Matisyahu, T-Pain and Gym Class Heroes; and proud owner of over 7 million YouTube views. He doesn’t take much time off. 
  
    Still, Cris’ success is not defined by his age. These accolades would be impressive for any artist. Cris Cab’s musical promise is framed by the sponge-like enthusiasm with which he approaches recording, the texture of his voice echoing through concert halls and headsets, and his fresh fusion of pop, reggae, and soul.'
)

Artist.create(
  name: 'Simon Hoppe',
  youtube_token: '9PlBWS20_2E',
  soundcloud_widget: '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Fusers%2F43261702&amp;color=9a1c1f&amp;auto_play=false&amp;show_artwork=true"></iframe>',
  bio: '22-year-old, Simon Hoppe, was initially introduced to house music back in his hometown of Munich, Germany. He recalls his first favorite track, "Around The World" by Daft Punk and ever since, he has been submerged in electronic music. Hoppe went from preferring the old school 90s sound from veterans like ATB and Paul Van Dyk, to a harder style from Italian maestro Benny Benassi and the French legend Laurent Garnier. 

    When Hoppe was sixteen, he came to Miami, Florida as a basketball recruit. After attending his first Ultra Music Festival in 2006, he became fascinated with the American scene. At the time, it was innovative and new, compared to how music was rooted into the culture in Germany. Hoppe and his best friend bought equipment and decided to start DJing locally under Scream & Shout. After high school, he returned to Europe and decided to start producing, culminating in the moniker, Simon Sh:out. He gained traction as an artist, landing a mixture of bookings throughout Europe and in Miami that featured his progressive-electro taste.

    Over time, Hoppe became frustrated with the build-up, drop scheme that came to overpower the electronic scene. He debuted his new alias, dinnerdate, in April of 2013 and quickly began receiving wide acclaim for his fresh sound. Now influenced by an eclectic mix of artists from Pleasurekraft and Anhdim to Eric Prydz and Disclosure, he translates different areas of everyday life into his music. Stay tuned for what\'s next from this up-and-coming talent.'
)

Artist.create(
  name: 'Tyler Thomas',
  youtube_token: 'U8WMgu1cfpc',
  soundcloud_widget: '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Fusers%2F13682422&amp;color=9a1c1f&amp;auto_play=false&amp;show_artwork=true"></iframe>',
  bio: 'Bio Coming soon...'
)