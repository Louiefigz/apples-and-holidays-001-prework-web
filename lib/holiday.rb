require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each  do |season, supplies|
         supplies << supply 
  end 
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |season, supplies|
    supplies << supply
 end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash[:winter].each do |season, supply|
    all_supplies << supply

  end 
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, event|
      puts "  #{holiday.to_s.split("_").each {|word| word.capitalize!}.join(' ')}: #{event.join(", ")}"

      
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)

  bbq=[]
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, event|
      event.each do |event, item|
      if event == "BBQ"
        bbq << holiday
      end
    end
 end
end
bbq
end






