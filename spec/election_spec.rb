require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do
  it 'exists' do
    election1 = Election.new("2023")

   expect(election1).to be_a Election
  end

  it '#initialize' do
  election1 = Election.new("2023")
   
  expect(election1.year).to eq("2023")
  expect(election1.races).to eq([])
  expect(election1.candidates).to eq([])
  end
end

describe '#add_race' do
  it 'cand add races' do
    election1 = Election.new("2023")
    race1 = Race.new("Texas Governor")
    race2 = Race.new("Colorado Governor")

    election1.add_race(race1)
    election1.add_race(race2)

    expect(election1.races).to eq([race1,race2])
   
  end
end

describe '#add_candidates'do
  it 'can add candidates to the election' do
    election1 = Election.new("2023")
    race1 = Race.new("Texas Governor")
    race2 = Race.new("Colorado Governor")
    race1.register_candidate!({name: "Diana D", party: :democrat})
    race1.register_candidate!({name: "Roberto R", party: :republican})

    election1.add_candidates(race1)

    expect(election1.candidates).to eq([Candidate.new({name: "Diana D", party: :democrat}), Candidate.new({name: "Roberto R", party: :republican})])
  end
end

describe '#add_votes_count' do
  it 'can add votes of candidates' do
    election1 = Election.new("2023")
    race1 = Race.new("Texas Governor")
    
    candidate1 = race1.register_candidate!({name: "Diana D", party: :democrat})
    candidate2 = race1.register_candidate!({name: "Roberto R", party: :republican})

    candidate1.vote_for!
    candidate1.vote_for!
    candidate1.vote_for!

    election1.add_vote_counts(race1)

  end
end

