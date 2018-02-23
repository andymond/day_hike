require "rails_helper"

describe "visitor navigates to trips index" do
  it "allows user to navigate to trip show" do
    trip = Trip.create(name: "trip 1")
    trail = trip.trails.create(name: "falls trail", address: "123 mountaintown st", length: 10)
    trail_2 = trip.trails.create(name: "sun trail", address: "143 mountaintown st", length: 15)

    visit trips_path
    click_on trip.name

    expect(current_path).to eq(trip_path(trip))
    expect(page).to have_content(trail.name)
    expect(page).to have_content(trail.address)
    expect(page).to have_content(trail.length)
    expect(page).to have_content(trail_2.name)
    expect(page).to have_content(trail_2.address)
    expect(page).to have_content(trail_2.length)
  end

end
