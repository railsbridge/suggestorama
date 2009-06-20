require 'test_helper'

class TopicTest < ActiveSupport::TestCase

  test "Require title to not be blank" do
    t = Topic.new
    assert t.valid? == false, "Expected Topic to not be valid"
  end

  test "Topic with title is valid" do
    t = Topic.new(:title => "my title")
    assert t.valid?, "Topic with title should be valid"
  end

  test "Topic has votes" do
    t = Topic.new(:title => "my title")
    assert t.votes == []
  end
end
