class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end
  def ordered
  	@customers = Customer.all.order(:full_name)
  end
  def missing_email
  	@customers = Customer.where("email_address = ''")
  end
end
