module IncomeTax
  module Countries
    class Martinique < Models::Progressive
      register "Martinique", "MQ", "MTQ"
      currency "EUR"

      level 5687,  "0%"
      level 11334, "5.5%"
      level 25195, "14%"
      level 67546, "30%"
      remainder    "40%"
    end
  end
end
