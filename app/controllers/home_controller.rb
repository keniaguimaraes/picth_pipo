class HomeController < ApplicationController
    def index
      add_breadcrumb "Página Principal", "/", :options => { :title => "Página principal" } 
    end
  end
  