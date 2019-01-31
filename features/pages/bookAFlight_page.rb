class BookAFlightPage
    include Capybara::DSL
    def bookFlight()
        fill_in('passFirst0', with: 'Tácito')
        fill_in('passLast0', with: 'Lima')
        fill_in('creditnumber', with: '5459479710811093')  
        find('input[name="buyFlights"').click
    end
end