# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

films = Film.create([
  {title: '2001: A Space Odyssey', rating: 9.5, genre: 'Science Fiction', description: 'Humanity finds a mysterious, obviously artificial, object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.', image_path: 'http://ia.media-imdb.com/images/M/MV5BNDYyMDgxNDQ5Nl5BMl5BanBnXkFtZTcwMjc1ODg3OA@@._V1_SY317_CR12,0,214,317_AL_.jpg'},
  {title: 'The Last House on the Left', rating: 4.1, genre: 'Horror', description: 'After kidnapping and brutally assaulting two young women, a gang unknowingly finds refuge at a vacation home belonging to the parents of one of the victims: a mother and father who devise an increasingly gruesome series of revenge tactics.', image_path: 'http://ia.media-imdb.com/images/M/MV5BMjExMTM4MDAwOF5BMl5BanBnXkFtZTcwODcyMDIzMg@@._V1_SY317_CR0,0,214,317_AL_.jpg'},
  {title: 'Shrek', rating: 8.8, genre: 'Family', description: 'An ogre, in order to regain his swamp, travels along with an annoying donkey in order to bring a princess to a scheming lord, wishing himself King.', image_path: 'http://ia.media-imdb.com/images/M/MV5BMTk2NTE1NTE0M15BMl5BanBnXkFtZTgwNjY4NTYxMTE@._V1_SX214_AL_.jpg'},
  {title: '2012', rating: 3.9, genre: 'Drama', description: 'A frustrated writer struggles to keep his family alive when a series of global catastrophes threatens to annihilate mankind.', image_path: 'http://ia.media-imdb.com/images/M/MV5BMTY0MjEyODQzMF5BMl5BanBnXkFtZTcwMTczMjQ4Mg@@._V1_SX214_AL_.jpg'},
  {title: 'Up', rating: 9.8, genre: 'Family', description: 'To avoid being taken away to a nursing home, an old widower tries to fly his home to Paradise Falls, South America, along with a boy scout who accidentally lifted off with him.', image_path:'http://ia.media-imdb.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX214_AL_.jpg'},
  {title: 'Interstellar', rating: 7.3, genre: 'Science Fiction', description: 'A team of explorers travel through a wormhole in an attempt to ensure humanitys survival.', image_path: 'http://ia.media-imdb.com/images/M/MV5BMjIxNTU4MzY4MF5BMl5BanBnXkFtZTgwMzM4ODI3MjE@._V1_SX214_AL_.jpg'},
  {title: 'Shrek 2', rating: 8.8, genre: 'Family', description: 'Princess Fionas parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.', image_path: 'http://ia.media-imdb.com/images/M/MV5BMTk4MTMwNjI4M15BMl5BanBnXkFtZTcwMjExMzUyMQ@@._V1_SX214_AL_.jpg'}
  ])

users = User.create([
  {first_name: 'John', last_name: 'Smith'},
  {first_name: 'Jane', last_name: 'Doe'},
  {first_name: 'Holly', last_name: 'Thomas'}
  ])
