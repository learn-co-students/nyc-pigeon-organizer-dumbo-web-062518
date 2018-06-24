def nyc_pigeon_organizer(data)
  new_list = {}
  data.each do |color_gender_lives_key, color_gender_lives_hash|
    color_gender_lives_hash.each do |key, names|
      names.each do |name|
        new_list[name] ||= {}
        new_list[name][color_gender_lives_key] ||= []
        new_list[name][color_gender_lives_key] << key.to_s
      end
    end
  end
  new_list
end
