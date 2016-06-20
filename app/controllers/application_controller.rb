class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def program
    OpenStruct.new session[:program] if session[:program].present?
  end

  helper_method :program

  private
  def find_subdomain
    if program.present? && program.name.downcase == request.subdomain.downcase
      program
    else
      session[:program] = nil
      lookup_program
    end
  end

  def lookup_program
    # Cache this
    if request.domain == 'subdomain-example.dev' && @program = Program.find_by(subdomain: request.subdomain.downcase)
      session[:program] = @program.attributes
    elsif request.domain != 'subdomain-example.dev' && @program = Program.find_by(subdomain: request.subdomain.downcase, domain_name: request.domain.downcase)
      session[:program] = @program.attributes
    else
      redirect_to root_url(subdomain: false)
    end
  end
end
