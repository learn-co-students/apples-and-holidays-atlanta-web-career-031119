require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies.each {|season, holiday|
    if season == :winter
    holiday.each {|day, supplies|
      supplies << "#{supply}"}
    end}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies.each {|season, holiday|
    if season == :spring
      holiday.each {|day, supplies|
      if day == :memorial_day
        supplies << "#{supply}"
      end}
  end}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {"#{holiday_name}": [*supply_array]}
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies_array=[]
  holiday_hash.each {|season, holiday|
    holiday.each {|day, supplies|
      supplies_array << supplies
      }}
      return supplies_array.join(", ")
end

def all_supplies_in_holidays(holiday_hash)
  list = []
  holiday_hash.each {|season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each {|holiday, supplies|
      array = holiday.to_s.split("_")
      final_holiday = []
        array.each {|x|
          final_holiday << x.capitalize!
          }
        holiday = final_holiday.join(" ")
        supplies = supplies.join(", ")
        puts "  #{holiday}: #{supplies}"
        }
      }
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each {|season, data|
    data.each {|holiday, supplies|
      supplies.each {|x|
        if x == "BBQ"
          array << holiday
        end
          }
        }
      }
  return array
end
