require "test_helper"

class SubscriptionTest < ActiveSupport::TestCase
  test "loads no subscription when no plans are given (polymorphic belongs-to)" do
    assert_nil Subscription.find_by(plan: [])
  end

  test "loads no subscription when no public plans are given (not polymorphic belongs-to)" do
    assert_nil Subscription.find_by(public_plan: [])
  end
end
