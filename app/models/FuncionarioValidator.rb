class FuncionarioValidator < ActiveModel::Validator
  def validate(record)
   @funcionario = Funcionario.find(record.funcionario_id)
   if  @funcionario.cliente_id = 1
     if @funcionario.nome == "" or  @funcionario.data_admissao == ""
      record.errors.add :base, "Nome ou Data de admissao do Funcionario em branco"
      elsif @funcionario.email == ""
        record.errors.add :base, "Informe no modulo de funcionário o email"
      end
    elsif  @funcionario.cliente_id = 2
      if @funcionario.nome == "" or  @funcionario.data_admissao ==""
        record.errors.add :base, "Nome ou Data de admissao do Funcionario em branco"
        elsif @funcionario.endereco == ""
        record.errors.add :base, "Informe no modulo de funcionário o endereco"
      end
    end
  end
  def geral(record)
    if @funcionario.nome == "" or  @funcionario.data_admissao ==""
      record.errors.add :base, "Nome ou Data de admissao do Funcionario em branco"
    end  
  end
    
end
