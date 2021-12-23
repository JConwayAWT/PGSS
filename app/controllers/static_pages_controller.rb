class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:admin_tools]

  def index
  end

  def program_overview
  end

  def selection_process
  end

  def costs_and_commitment
  end

  def how_to_apply
  end

  def important_dates
  end

  def applicant_faq
  end

  def accepted_faq
  end

  def parent_faq
  end

  def find_by_iu
  end

  def journals
  end

  def admin_tools
  end

end
