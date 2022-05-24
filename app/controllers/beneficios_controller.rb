class BeneficiosController < ApplicationController
  before_action :set_beneficio, only: %i[ show edit update destroy ]

  # GET /beneficios or /beneficios.json
  def index
    add_breadcrumb "Pagina Principal", root_path, :title => "Voltar para a Página principal"
    add_breadcrumb "Benefícios"
    @beneficios = Beneficio.all
  end

  # GET /beneficios/1 or /beneficios/1.json
  def show

  end

  # GET /beneficios/new
  def new
    @beneficio = Beneficio.new
  end

  # GET /beneficios/1/edit
  def edit
  end

  # POST /beneficios or /beneficios.json
  def create
    @beneficio = Beneficio.new(beneficio_params)
    if @beneficio.save
      redirect_to "/beneficios/", notice: "Novo beneficio adicionado!"
    else
      render :new, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /beneficios/1 or /beneficios/1.json
  def update
    if @beneficio.update(beneficio_params)
      redirect_to "/beneficios/", notice: "Beneficio editado!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /beneficios/1 or /beneficios/1.json
  def destroy
    @beneficio.destroy
    redirect_to "/beneficios/", notice: "Beneficio Exclúido!",status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficio
      @beneficio = Beneficio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beneficio_params
      params.require(:beneficio).permit(:nome)
    end
end
