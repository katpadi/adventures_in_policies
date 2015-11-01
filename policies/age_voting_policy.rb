module Policies
  class AgeVotingPolicy < VotingPolicy
    attr_reader :voter, :args

    def passed?
      voter.age >= 18
    end
  end
end