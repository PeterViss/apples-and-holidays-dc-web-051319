require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]

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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_supplies[:winter].each do |holiday, items|
      items << supply
      puts items
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_supplies[:spring].each do |holiday, items|
  items << supply
  puts items
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] =
supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  nu_array = []
  holiday_hash[:winter].collect do |winter, supplies|
  nu_array  << supplies
  end # return an array of all of the supplies that are used in the winter season
nu_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
      puts "#{season.to_s.capitalize!}:"
      data.each do |holiday, supply|
        array = holiday.to_s.split("_")
        final_holiday = []
          array.each do |x|
            final_holiday << x.capitalize!
          end
        holiday = final_holiday.join(" ")

         supply = supply.join(", ")
        puts "  #{holiday}: #{supply}"

       end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
