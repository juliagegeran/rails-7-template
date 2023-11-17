desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  moods = ["hehe", "haha", "uwu", "aigoo", "eek"]
  weathers = ["sunny", "cloudy", "snowy", "rainy"]

  10.times do
    entry = Entry.new
    entry.mood = moods.sample
    entry.weather = weathers.sample
    entry.body = Faker::Quotes::Chiquito.joke
    
  end
end
