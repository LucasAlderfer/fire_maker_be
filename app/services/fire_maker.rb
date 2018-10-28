class FireMaker

  def self.make_fires
    response = Faraday.get('https://firms.modaps.eosdis.nasa.gov/data/active_fire/c6/csv/MODIS_C6_USA_contiguous_and_Hawaii_24h.csv')
    csv_text = response.body
    binding.pry
    CSV.parse(csv_text, headers: true, header_converters: :symbol) do |row|
      fire = {
        latitude: row[:latitude],
        longitude: row[:longitude],
        brightness: row[:brightness],
        scan: row[:scan],
        track: row[:track],
        acq_date: row[:acq_date],
        acq_time: row[:acq_time],
        satellite: row[:satellite],
        confidence: row[:confidence],
        version: row[:version],
        bright_t31: row[:bright_t31],
        frp: row[:frp],
        daynight: row[:daynight]
      }
      Fire.create(fire)
    end
  end

end
