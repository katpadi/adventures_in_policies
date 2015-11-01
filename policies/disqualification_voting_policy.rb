module Policies
  class DisqualificationVotingPolicy < VotingPolicy
    attr_reader :voter, :args

    def passed?
      insane_or_incompetent?
    end

    private

    def insane_or_incompetent?
      # Randomly insane/incompetent
      [true, false].sample
    end
  end
end