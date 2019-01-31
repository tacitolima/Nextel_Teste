
class FlightFinderPage
    include Capybara::DSL
    def selectFlightDetails() 
        select('London', from: 'fromPort')
        select('December', from: 'fromMonth')
        select('20', from: 'fromDay')
        select('October', from: 'toMonth')
        select('21', from: 'toDay')
        find('input[value=First').click
        select('Blue Skies Airlines', from: 'airline')
        select('21', from: 'toDay')
        find('input[name="findFlights"]').click

    end
end