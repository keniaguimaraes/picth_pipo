class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[ show edit update destroy ]

  # GET /clientes or /clientes.json
  def index
    add_breadcrumb "Pagina Principal", root_path, :title => "Voltar para a Página principal"
    add_breadcrumb "Clientes"
    @clientes = Cliente.all
  end

  # GET /clientes/1 or /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end


  # POST /clientes or /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)
    if @cliente.save
      redirect_to @cliente, notice: "Novo Cliente Adicionado!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clientes/1 or /clientes/1.json
  def update
    if @cliente.update(cliente_params)
      redirect_to @cliente, notice: "Cliente editado!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /clientes/1 or /clientes/1.json
  def destroy
    @cliente.destroy
    redirect_to clientes_url, notice: "Cliente Exclúido!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cliente_params
      params.require(:cliente).permit(:nome)
    end
end
