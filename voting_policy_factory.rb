class VotingPolicyFactory
  class << self
    def build(voter, args: {})
      policies = []
      policies << common_policies
      policies << args[:custom_policies] if args[:custom_policies].present?

      # instantiate the policy classes
      policies.flatten.each_with_object([]) do |policy, instances|
        instances << policy.new(voter, args)
      end
    end

    def common_policies
      [
        Policies::AgeVotingPolicy,
        Policies::ResidencyVotingPolicy,
        Policies::DisqualificationVotingPolicy
      ]
    end
  end
end