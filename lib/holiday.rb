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

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, hash|
    if key == :winter
      hash.each do |holdys, array|
        array << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
 holiday_hash[:spring][:memorial_day][-1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = ""
  arry_of_supplies = []
  cnt = 1
  holiday_hash[:winter].collect do |key, array|
    array.each do |elmnt|
      winter_supplies << elmnt
      winter_supplies+=","
    end
  end
 arry_of_supplies = winter_supplies.split(",")
 arry_of_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  h_supplies = ""
  cnt = 1
  cnt2 = 1
  formt_key =[]
  formt_strng =""
  holiday_hash.each do |key, hash|
    puts "#{key.capitalize}:"
      hash.each do |hkey, supply_array|
        supply_array.each do |elmnt|
          h_supplies << elmnt
          if (supply_array.length > 1) && (cnt < supply_array.length) 
          h_supplies+=", "
          end
          cnt+=1
        end
        if hkey.to_s.include?("_")
          formt_key = hkey.to_s.split("_")
          formt_key.each do |elmnt|
            formt_strng << elmnt.capitalize
            if (cnt2 < formt_key.length)
              formt_strng << " "
            end
            cnt2 += 1
          end
        else formt_strng = hkey.capitalize 
        end
        puts "  #{formt_strng}: #{h_supplies}"
        #reset variables 
        h_supplies ="" 
        formt_strng =""
        cnt2 = 1
        cnt = 1
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_arry = []
 holiday_hash.each do |period, holiday|
   holiday.each do |hname, supply_array|
     if supply_array.include?("BBQ")
       bbq_arry << hname
     end
   end
 end
 bbq_arry
end







