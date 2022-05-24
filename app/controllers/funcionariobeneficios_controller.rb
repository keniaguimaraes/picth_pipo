class FuncionariobeneficiosController < ApplicationController
  before_action :set_funcionariobeneficio, only: %i[show edit update ]
  before_action :set_beneficio, only: [:edit, :create,:update]
 

  # GET /funcionariobeneficios or /funcionariobeneficios.json
  def index
    add_breadcrumb "Pagina Principal ", root_path, :title => "Voltar para a Página principal"
    add_breadcrumb "Funcionários ", funcionarios_path, :title => "Voltar para Funcionários"
    add_breadcrumb "Benefícios para Funcionários"
    @funcionarios = Funcionario.find_by(id:params[:funcionario_id])
    @funcionariobeneficios = Funcionariobeneficio.where("funcionario_id =:funcionario_id",{funcionario_id:params[:funcionario_id]}).all
  end

  # GET /funcionariobeneficios/1 or /funcionariobeneficios/1.json
  def show
  end

  # GET /funcionariobeneficios/new
  def new
   @@funcionarioid= params[:funcionario_id]
   @funcionario = Funcionario.find(@@funcionarioid)
   @cliente_id = @funcionario.cliente.id
   @beneficios = Beneficio.select("beneficios.*").joins("JOIN clientebeneficios ON clientebeneficios.beneficio_id = beneficios.id ").where("clientebeneficios.cliente_id=?",@cliente_id).all
   @funcionariobeneficio = Funcionariobeneficio.new
  end

  # GET /funcionariobeneficios/1/edit
  def edit
    @funcionariobeneficio = Funcionariobeneficio.find(params[:id])
    @@funcionarioid= @funcionariobeneficio.funcionario_id
  end

  # POST /funcionariobeneficios or /funcionariobeneficios.json
  def create
    @funcionariobeneficio = Funcionariobeneficio.new(funcionariobeneficio_params)
    @funcionariobeneficio.funcionario_id = @@funcionarioid
    if @funcionariobeneficio.save
      redirect_to funcionariobeneficios_path(funcionario_id:@@funcionarioid), notice: "Benefício adicionado!"
    else
      render :new, status: :unprocessable_entity
    end  
  end

  # PATCH/PUT /funcionariobeneficios/1 or /funcionariobeneficios/1.json
  def update
      if @funcionariobeneficio.update(funcionariobeneficio_params)
        redirect_to funcionariobeneficios_path(funcionario_id:@funcionariobeneficio.funcionario_id), notice: "Benefício editado!"
      else
       render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /funcionariobeneficios/1 or /funcionariobeneficios/1.json
  def destroy
    @funcionariobeneficio = Funcionariobeneficio.find(params[:id])
    @funcionariobeneficio.destroy
    redirect_to '/funcionarios/',status: :see_other,notice:"Benefício excluído!"
  end

  def ficha
      @funcionariobeneficio  = Funcionariobeneficio.find(params[:id])
      respond_to do |format|
        format.html
        format.pdf { render pdf: ""}
      end 
  end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionariobeneficio
      @funcionariobeneficio = Funcionariobeneficio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funcionariobeneficio_params
      params.require(:funcionariobeneficio).permit(:funcionario_id, :beneficio_id, :peso, :altura, :horas_meditadas)
    end

    def set_beneficio
      @funcionario = Funcionario.find(@@funcionarioid)
      @cliente_id = @funcionario.cliente.id
      @beneficios = Beneficio.select("beneficios.*").joins("JOIN clientebeneficios ON clientebeneficios.beneficio_id = beneficios.id ").where("clientebeneficios.cliente_id=?",@cliente_id).all
    end  
end
