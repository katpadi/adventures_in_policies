module Policies
  class AlwaysFalsePolicy < VotingPolicy
    attr_reader :voter, :args

    def passed?
      # A olicy that is always false and I want to use on the fly
      false
    end
  end
end