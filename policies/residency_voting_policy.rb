module Policies
  class ResidencyVotingPolicy < VotingPolicy
    attr_reader :voter, :args

    def passed?
      (Date.today - 1.year) >= voter.resident_since
    end
  end
end