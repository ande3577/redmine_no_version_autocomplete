require File.expand_path('../../test_helper', __FILE__)

class VersionTest < ActiveSupport::TestCase
  fixtures :projects, :trackers, :issue_statuses, :projects_trackers
  
  def test_completed_should_be_false_when_due_a_week_ago
    version = Version.create!(:project_id => 1, :effective_date => 1.week.ago, :name => 'Due a week ago')
    assert_equal false, version.completed?
  end
  
  def test_overdue_should_be_true_when_due_a_week_ago
    version = Version.create!(:project_id => 1, :effective_date => 1.week.ago, :name => 'Due a week ago')
    assert_equal true, version.overdue?
  end
  
  def test_overdue_should_be_true_when_due_a_week_ago_and_version_locked
    version = Version.create!(:project_id => 1, :effective_date => 1.week.ago, :name => 'Due a week ago', :status => 'locked')
    assert_equal true, version.overdue?
  end
  
  def test_overdue_should_be_false_when_due_a_week_ago_and_version_closed
    version = Version.create!(:project_id => 1, :effective_date => 1.week.ago, :name => 'Due a week ago', :status => 'closed')
    assert_equal false, version.overdue?
  end
  
  def test_overdue_should_be_false_when_due_today
    version = Version.create!(:project_id => 1, :effective_date => Date.today, :name => 'Due today')
    assert_equal false, version.overdue?
  end
  
end
