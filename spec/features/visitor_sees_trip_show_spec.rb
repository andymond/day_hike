require "rails_helper"

describe "visitor visits trip show" do
  it "displays planned total length of trails" do
    trip = Trip.create(name: "trip 1")
    trip.trails.create(name: "falls trail", address: "123 mountaintown st", length: 10)
    trip.trails.create(name: "sun trail", address: "143 mountaintown st", length: 15)

    visit trip_path(trip)

    expect(page).to have_content(trip.total_trail_length)
    expect(page).to have_content(trip.avg_trail_length)
    expect(page).to have_content(trip.longest_trail)
    expect(page).to have_content(trip.shortest_trail)
  end
end
