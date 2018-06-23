require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  create_keys(data, pigeon_hash)
  create_property_keys(data, pigeon_hash)
  insert_data(data, pigeon_hash)
  pigeon_hash
end

def create_keys(data, hash)
  data.each do |key, values|
    values.each do |property, names|
      names.each do |name|
        if hash[name] == nil
          hash[name] = {}
        end
      end
    end
  end
end

def create_property_keys(data, hash)
  data.each do |key, values|
    values.each do |property, names|
      names.each do |name|
        hash[name][key] = []
      end
    end
  end
end

def insert_data(data, hash)
  data.each do |key, values|
    values.each do |property, names|
      names.each do |name|
        hash[name][key].push(property.to_s)
      end
    end
  end
end

nyc_pigeon_organizer(pigeon_data)
