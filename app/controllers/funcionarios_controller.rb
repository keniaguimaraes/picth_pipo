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

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to "/funcionarios/", notice: "Funcionário adicionado!" }
        #format.json { render :show, status: :created, location: @funcionario }
        format.json { head :no_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcionarios/1 or /funcionarios/1.json
  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to "/funcionarios/", notice: "Funcionário editado" }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcionarios/1 or /funcionarios/1.json
  def destroy
    @funcionario= Funcionario.find(params[:id])
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to "/funcionarios/", notice: "Funcionário excluído!" }
      format.json { head :no_content }
    end
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
