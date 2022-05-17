class HomeController < ApplicationController
    def index
      @qtd_funcionario = Funcionario.count
      @qtd_cliente = Cliente.count
      @qtd_beneficio = Beneficio.count

      add_breadcrumb "Página Principal", "/", :options => { :title => "Página principal" } 
    end
  end
  