class CaseStudiesController < ApplicationController

  # GET /case_studies
  def index
    @case_studies = CaseStudy.includes(:client => :client_images).where(:display => true).order(:position)
  end

  # GET /case_studies/1
  def show
    @case_study = CaseStudy.find(params[:id])    
  end

  
end

