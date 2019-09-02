require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
holiday_supplies.each do |value|
  holiday_supplies[:summer][:fourth_of_july][1] = "Watermelon"
  holiday_supplies[:summer][:fourth_of_july][1, 2]
  holiday_supplies
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
holiday_supplies.each do |supply|
  holiday_supplies[:winter][:christmas][:new_years][1] = "Balloons"
  holiday_supplies[:winter][:christmas][:new_years].include?("Balloons")
  holiday_supplies
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
holiday_supplies.each do |supply|
  holiday_supplies[:spring][:memorial_day][1] = "Grill"
  holiday_supplies[:spring][:memorial_day].include?("Grill")
  holiday_supplies[:spring][:memorial_day].include?("Table Cloth")
  holiday_supplies
end
holiday_supplies.each do |supply|
  holiday_supplies[:spring][:memorial_day].delete("Grill")
  holiday_supplies[:spring][:memorial_day][1] = "Table Cloth"
  holiday_supplies[:spring][:memorial_day].include?("Grill")
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
holiday_supplies.each do |key, value|
  holiday_supplies.include?(:columbus_day, :valentines_day)
  columbus_day_supplies = { columbus_day: ["Flags", "Parade Floats", "Italian Food"] }
  holiday_supplies[:fall].merge(columbus_day_supplies)
  valentines_day_supplies = { valentines_day: ["Cupid Cut-Out", "Candy Hearts"] }
  holiday_supplies[:winter].merge(:valentines_day)
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
["Lights", "Wreath", "Party Hats"].each do |supply|
  holiday_supplies.include?(supply)
  holiday_supplies
end

def all_supplies_in_holidays(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
all_supplies = ("Lights", "Wreath", "Party Hats", "Fireworks", "BBQ", "Turkey", "BBQ")
  puts "#{all_supplies}"
end

def all_holidays_with_bbq(holiday_hash)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
holiday_supplies.each do |value|
  holiday_supplies[:fourth_of_july][1][:memorial_day]
  holiday_supplies
end
end
end
end
end
end
