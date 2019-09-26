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
  holiday_hash[:winter].each do |holiday, items|
    items << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring].each do |holiday, items|
  items << supply 
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash.each do |seasons, holiday|
      if seasons == season 
        holiday_hash[seasons][:"#{holiday_name}"] = supply_array
      end 
    end 
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used 
  winter_supplies = holiday_hash[:winter].collect do |holiday, supplies|
    supplies
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
  
  holiday_form = holiday.to_s.split("_")
  
    holiday_hash.each do |season, hash|
      puts "#{season.capitalize}:"
    hash.each do |holiday, supplies|
      
      holiday_form = holiday.to_s.split("_")

    holiday_form.each do |i|
      i.capitalize!
      end
   end
       puts "  #{holiday_form.join(" ")}: #{supplies.join(", ")}"
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
return_array = []
holiday_hash.each do |season, hash|
  
  hash.each do |holiday, supplies|
    
    supplies.each do |i|
      if i == "BBQ"
      return_array << holiday
        end
      end
    end
  end
  return_array
end







