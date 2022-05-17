class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: %i[ show edit update destroy ]
  before_action :set_cliente, only: [:new, :edit, :create,:update]

  # GET /funcionarios or /funcionarios.json
  def index
    add_breadcrumb "Pagina Principal", root_path, :title => "Voltar para a Página principal"
    add_breadcrumb "Funcionários"
    @funcionarios = Funcionario.all.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /funcionarios/1 or /funcionarios/1.json
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit
  end

  # POST /funcionarios or /funcionarios.json
  def create
    @funcionario = Funcionario.new(funcionario_params)

  #  respond_to do |format|
      if @funcionario.save
       flash.now[:notice] = "Funcionário foi incluído! "
       redirect_to  "/funcionarios/"
      else 
        render :new, status: :unprocessable_entity
      end  
   # end
  end

  # PATCH/PUT /funcionarios/1 or /funcionarios/1.json
  def update
      if @funcionario.update(funcionario_params)
        redirect_to "/funcionarios/", notice: "Funcionário editado" 
      else
        render :edit, status: :unprocessable_entity
       end
  end

  # DELETE /funcionarios/1 or /funcionarios/1.json
  def destroy
    @funcionario= Funcionario.find(params[:id])
    @funcionario.destroy
    flash.now[:notice] = "Funcionário excluído! "
    redirect_to  "/funcionarios/",status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funcionario_params
      params.require(:funcionario).permit(:nome, :cpf, :endereco, :data_admissao, :email,:cliente_id)
    end
    
    def set_cliente
      @clientes = Cliente.all
    end
end
