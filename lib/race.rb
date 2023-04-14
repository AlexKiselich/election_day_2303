class Race 
  attr_reader :office, :candidates
  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
    list_of_candidates = []
    new_candidate = Candidate.new(candidate)
    @candidates << new_candidate[0]
  end


end