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
  new_array = holiday_hash[:summer][:fourth_of_july]
  new_array[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].collect do |key, value|
    value.push("#{supply}")
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].collect do |key, value|
    value.push("#{supply}")
  end
  

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] =supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holiday|
    x = season.to_s 
    
    puts "#{x.capitalize}:"
    holiday.each do |name, supply_array|
      z = name.to_s
      a = z.split("_") 
      new_array = []
      a.each do |d|
        new_array.push("#{d.capitalize}") 
      end 
      y = supply_array.join(", ") 
       
    puts "  #{new_array.join(" ")}: " + "#{y}" 
  
    end 
  end 
    

end

def all_holidays_with_bbq(holiday_hash)
  
 holiday_hash.collect do |a, b|
   b.collect do |c, d|
     c if d.include?("BBQ")
  end
end.flatten.compact
end







