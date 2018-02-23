require "rails_helper"

describe "visitor navigates to trail show" do
  it "displays trail details" do
    trip = Trip.create(name: "trip 1")
    trail = Trail.create(name: "sun trail", address: "143 mountaintown st", length: 15, trip_id: trip.id)

    visit trail_path(trail)

    expect(page).to have_content(trail.name)
    expect(page).to have_content(trail.address)
    expect(page).to have_content(trail.length)
  end
end
