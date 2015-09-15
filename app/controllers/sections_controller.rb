class SectionsController < ApplicationController
  def index
    if lifeguard.present?
      @sections = lifeguard.sections
    else
      @sections = Section.all
    end
  end

  private

  def lifeguard
    return nil if params[:lifeguard_id].blank?
    Lifeguard.find(params[:lifeguard_id])
  end
end
