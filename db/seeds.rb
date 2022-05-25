# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 Cliente.create([{ nome: "Acme Co" }, { nome: "Dental Sorriso" }])
 Beneficio.create([{ nome: "Plano de Saúde NorteEuropa" }, { nome: "Plano de Saúde Pampulha Intermédica" },{nome:"Plano Dental Sorriso"},{ nome: "Plano de Saúde Mental Mente Sã, Corpo São" }])
 Funcionario.create(nome:"Maria Silva",cpf:"23775652043",endereco:"Ruda do João ",email:"mariasilva@email.com",data_admissao:"20/01/2021",cliente_id:1)
 Funcionariobeneficio.create({funcionario_id:1, beneficio_id:2, peso:59, altura:1.70, horas_meditadas:"10/01/2020 01:30"})
 Clientebeneficio.create([{cliente_id:1, beneficio_id:1},{cliente_id:1, beneficio_id:3},{cliente_id:2, beneficio_id:2},{cliente_id:2, beneficio_id:3},{cliente_id:2, beneficio_id:4}])