require "rails_helper"

describe "visitor visits trip show" do
  it "displays planned total length of trails" do
    trip = Trip.create(name: "trip 1")
    trail = trip.trails.create(name: "falls trail", address: "123 mountaintown st", length: 10)
    trail_2 = trip.trails.create(name: "sun trail", address: "143 mountaintown st", length: 15)

    visit trip_path(trip)

    expect(page).to have_content(trip.total_length)
  end
end
