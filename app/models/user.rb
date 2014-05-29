class User < ActiveRecord::Base

  
  def as_json(options={})
    {
      :id => self.id,
      :first_name => self.first_name,
      :last_name => self.last_name,
      :full_name => self.full_name,
      :email => self.email

    }
    
  end
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
