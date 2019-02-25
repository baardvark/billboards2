10.times do
  c = Chart.create(
      name: Faker::Music.genre
  )
  10.times do 
  c.songs.create(
      title: Faker::Book.title,
      album: Faker::Music.album
  )
  end
end

10.times do
  artist = Artist.create(
      name: Faker::Music.band
  )
  10.times do
  artist.songs.create(
      title: Faker::Book.title,
      album: Faker::Music.album
  )
  end
end


puts "Successfully seeded"

