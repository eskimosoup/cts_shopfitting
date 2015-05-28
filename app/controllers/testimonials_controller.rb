class TestimonialsController < ApplicationController

  # GET /testimonials
  def index
    @current_branch = Willow::StaticPage.find_by_name("Testimonials").branch
    @testimonials = Testimonial.all
  end

end

