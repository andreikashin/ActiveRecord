class TodoItem < ActiveRecord::Base
  def self.get_completed_count()
    return self.all.where(completed: true).count
  end
end
