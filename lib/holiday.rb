require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, item| 
    item << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday| 
    puts season.to_s.capitalize + ":"
  holiday.each do |name, supplies|
    name_array = name.to_s.split("_")
    name_strings_array = name_array.map{|string| string.capitalize}
    name_string = name_strings_array.join(" ")
    puts "  " + name_string + ": " + supplies.join(", ")
  end    
 end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
 holiday_hash.each do |season, holiday|
  holiday.each do |holiday, supply| 
    if supply.include?("BBQ")
      bbq_holidays << holiday
  end
 end
end
bbq_holidays
end