require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  it 'exists' do
    race = Race.new("Texas Governor")

    expect(race).to be_a Race
  end

  it '#initialize' do
  race = Race.new("Texas Governor")

  expect(race.office).to eq("Texas Governor")
  # expect(race.candidates).to eq([])
  end
end

describe '#register_candidate!' do
  it 'can register candidates' do
    race = Race.new("Texas Governor")
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(candidate1.class).to eq(Candidate)
    expect(candidate1.name).to eq("Diana D")
    expect(candidate1.party).to eq(:democrat)

    candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})

    expected_resutls = [Candidate.new({name: "Diana D", party: :democrat}), Candidate.new({name: "Roberto R", party: :republican})]

    expect(race.candidates).to eq(expected_resutls)
  end
end