class Task < ActiveRecord::Base
  attr_accessible :description

  def complete!
    self.complete = true
    save
  end
end
