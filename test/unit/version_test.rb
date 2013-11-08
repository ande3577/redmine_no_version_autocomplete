require File.expand_path('../../test_helper', __FILE__)

class VersionTest < ActiveSupport::TestCase
  fixtures :projects, :trackers, :issue_statuses, :projects_trackers
  
  def test_completed_should_be_false_when_due_a_week_ago
    version = Version.create!(:project_id => 1, :effective_date => 1.week.ago, :name => 'Due a week ago')
    assert_equal false, version.completed?
  end
  
end
