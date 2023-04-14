class Election 
  attr_reader :year, :races, :candidates
  def initialize(year)
    @year = year
    @races = []
    @candidates = []
    @vote_counts = {}
  end

  def add_race(race)
    @races << race
  end

  def add_candidates(race)
    race.candidates.map do |candidate|
      @candidates << candidate
    end
  end

  def add_vote_counts(race)
    candidates_name = race.candidates.map do |candidate|
    candidate.name
    end
    candidates_name.
end
      require 'pry'; binding.pry