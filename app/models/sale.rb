class Sale < ActiveRecord::Base

  belongs_to :employee
  belongs_to :customer

  def self.most_recent(month)
   Sale.where('sale_date > ?',  month.months.ago).order(:sale_date)
  end

end
