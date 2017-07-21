class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Space.star,
        description: FFaker::CheesyLingo.paragraph,
        location: FFaker::AddressUS.state
      )
      puts "Park #{i}: Name is #{park.name} location is '#{park.location}'."
    end
  end
end

Seed.begin
