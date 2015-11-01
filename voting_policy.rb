class VotingPolicy
  attr_reader :voter, :policies, :args

  def initialize(voter, args = {})
    @voter = voter
    @args = args
  end

  def passed?
    policies = VotingPolicyFactory.build(voter, args: args)
    policies.each do |policy|
      return false unless policy.passed?
    end
    true
  end
end