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
      holiday_hash[:summer][:fourth_of_july].last    
   
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash[:spring].each do |holiday, s|
    s << supply
  end
  return holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  
  holiday_hash[season][holiday_name] = supply_array
  
  # code here
  # remember to return the updated hash
  return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
array = holiday_hash[:winter].values
return array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |festivals, supply|
      array = festivals.to_s.split("_")
      final_array = []
        array.each do |x|
          final_array << x.capitalize!
        end
      festivals = final_array.join(" ")

       supply = supply.join(", ")
      puts "  #{festivals}: #{supply}"

     end
  end


end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
array = []
holiday_hash.collect do |k,v|


 v.each do |holiday,supplies|
 #puts supplies

 supplies.each do |value|
      
  if value == "BBQ"

  array << holiday  
 #if supplies.to_s == "BBQ"
   #puts supplies
 end 
 end 
 end 
 
end 
array

end







