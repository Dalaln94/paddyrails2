class ExtraController < ApplicationController
  def privacy
  respond_to do |format|
    format.html { render "extra/privacy", :layout => false }
   end
end

  def adv
  end
end 

