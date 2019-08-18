require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(supplies_hash, supply)

     supplies_hash[:winter][:new_years] << supply 
     supplies_hash[:winter][:christmas] << supply 
end


def add_supply_to_memorial_day(supplies_hash, supply)
  
 supplies_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').collect {|n| n.capitalize! }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
 







