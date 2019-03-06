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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:"#{season}"][:"#{holiday_name}"]=supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies=holiday_hash[:winter].values.flatten
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.map do |season, days|
    cap_season=season.to_s
    cap_season=cap_season.split
    cap_season.map {|item| item=item.capitalize}
    season=cap_season.join(" ")
    cap_day=days.to_s
    cap_day=cap_day.split
    cap_day.map {|item| item=item.capitalize}
    day=cap_day.join(" ")
    days.map do |supply|
      cap_supply=supply.to_s
      cap_supply=cap_supply.split
      cap_supply.map {|item| item=item.capitalize}
      supply=cap_supply.join(" ")
    end
  end
  holiday_hash.each do |season, days|
    print season.to_s+":"+"\n"
    day_array=season.keys
    d=0
    if d<day_array.length
      print " #{day_array[d].to_s}: " + "#{holiday_hash["#{season}"][:"#{day_array[d]}"].join(", ")}" + "\n"
      d+=1
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  barbie_q=[]
  holiday_hash.each do |season, days|
    days.each do |day, supply|
      if supply.include?("BBQ")
        barbie_q<<day
      end
    end
  end
  return barbie_q
end
