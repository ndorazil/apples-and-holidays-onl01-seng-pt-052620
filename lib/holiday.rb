require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  christmas_supplies = holiday_hash[:winter][:christmas]
  new_years_supplies = holiday_hash[:winter][:new_years]
  christmas_supplies + new_years_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |holiday, supply|
      day = holiday.to_s.split("_")
      day.each do |word|
        word.capitalize!
      end
      puts "  #{day.join(" ")}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  day = []
  holiday_hash.each do |season, holiday_values|
    holiday_values.each do |holiday, values|
      if values.include?("BBQ")
        day << holiday
      end
    end
  end
  return day
end






