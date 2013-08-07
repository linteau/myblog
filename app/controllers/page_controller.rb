class PageController < ApplicationController
  
  http_basic_authenticate_with name: "andysblog", password: "secret", only: [:admin]  
  def admin
  end

  def about
  end
end
