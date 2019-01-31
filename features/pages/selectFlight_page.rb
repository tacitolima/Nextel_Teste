class SelectFlightPage
    include Capybara::DSL
    def selectFlight()
        find('input[value="Blue Skies Airlines$361$271$7:10"]').click
        find('input[value="Blue Skies Airlines$631$273$14:30"]').click
        find('input[name="reserveFlights"]').click
    end
end