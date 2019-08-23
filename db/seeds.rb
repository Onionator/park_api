class Seed
  # To protect my api key and still use this information for the project, the project will not be capable of seeding again without a new api key. If you would like an to use the project then pull the info from the dumped database or get your own api key from https://developer.nps.gov/api/ and put your key in the url.
  def self.begin
    Park.destroy_all
    seed = Seed.new

    response = RestClient::Request.execute(
      method: :get,
      url: 'https://developer.nps.gov/api/v1/parks?api_key=cPa0EX5nSyuioSnuoRazpgmocWfn0jLq8CzOg6Gl'
    )

    park_info = JSON.parse(response)
    seed.generate_parks(park_info)
  end
  def generate_parks(park_info)
    50.times do |i|
      park = Park.create!(
        description: park_info["data"][i]["description"],
        directions: park_info["data"][i]["directionsInfo"],
        name: park_info["data"][i]["fullname"] || park_info["data"][i]["name"],
        states: park_info["data"][i]["states"],
        website: park_info["data"][i]["url"]
      )

      puts "Park #{i}: #{park.name}"
    end
  end
end

Seed.begin
