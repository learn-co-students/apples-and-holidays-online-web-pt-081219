require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holidays|
    if season.to_s == "winter"
      holidays.each do |holiday, supply_array|
        supply_array.push(supply)
      end
    end
  end
  
  holiday_hash

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season, holidays|
    if season.to_s == "spring"
      holidays.each do |holiday, supply_array|
        if holiday.to_s == "memorial_day"
          supply_array << supply
        end
      end
    end
  end
  
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season] = {
    holiday_name => supply_array
  }
  
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  
  holiday_hash.each do |season, holidays|
    if season.to_s == "winter"
      holidays.each do |holiday, supply_array|
        winter_supplies << supply_array
      end
    end
  end

  winter_supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    
    holidays.each do |holiday, supply_array|
      #format the holiday
      formatted_holiday = holiday.to_s.split("_")
      formatted_holiday.each do |element|
        element.capitalize!
      end
      
      holiday_output = formatted_holiday.join(" ")
      
      
      #format the supplies
      formatted_supplies =[]
      if supply_array.length == 1
        formatted_supplies = supply_array
      else
        supply_array.each do |element|
          if element != supply_array.last
            formatted_supplies.push("#{element},")
          else
            formatted_supplies.push(element)
          end
        end
      end
    
      
      puts "  #{holiday_output}: #{formatted_supplies.join(" ")}"
      
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holidays_containing_bbq = []
  
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        holidays_containing_bbq.push(holiday)
      end
    end
  end
  
  holidays_containing_bbq
end







