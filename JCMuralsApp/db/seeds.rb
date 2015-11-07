# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

murals = Mural.create([
    {title: 'The Jersey City Wave',
      year: 2015,
      artist: 'Shepard Fairey',
      website: 'http://www.obeygiant.com/',
      description: 'The mural is designed to symbolize the renaissance and the cultural wave that Jersey City is riding while also acknowledging its waterfront location and the beauty and power of Mother Nature.',
      neighborhood: 'Downtown',
      address: 'Grove and Columbus',
      is_mural: true,
      users_id: 2},

      {title: 'Things Fall Apart',
        year: 2015,
        artist: 'Emilio Florentine',
        website: 'http://emilioflorentine.com/',
        description: 'White flowers deconstructing into geometric shapes on a striking purple background',
        neighborhood: 'Communipaw',
        address: 'Whiton and Johnston',
        is_mural: true,
        users_id: 2},

        {title: 'Big City Dreams',
          year: 2015,
          artist: 'Andrea von Bujdoss',
          website: 'http://www.superfreshdesign.com/',
          description: 'A loud, brash, and bright classic graffiti style mural that exclaims it\'s title, "Big City Dreams"',
          neighborhood: 'Downtown',
          address: 'Columbus and Coles',
          is_mural: true,
          users_id: 2},
  ])
