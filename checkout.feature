#language:pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Cenário: Cadastro com sucesso
Dado que a página de cadastro está aberta
E que "nome", "sobrenome", "pais" e "nome da rua e número da casa" são obrigatórios 
E que "CEP", "telefone" e "endereço de e-mail" são obrigatórios
E que "nome da empresa" e "apartamento, suíte, unidade, etc." são opcionais
Se o cliente preencher todos os campos obrigatórios corretamente, ele é cadastrado com sucesso.

Esquema do Cenário: Cadastro com falha por campo obrigatório não preenchido

Dado que a página de cadastro está aberta
Quando deixo o campo obrigatório "<campo>" sem preencher
E tento concluir o cadastro
Então o cadastro não deve ser realizado
E uma mensagem de alerta deve ser exibida

Exemplos:
| campo      |
| nome       |
| sobrenome  |
| país       |
| endereço   |
| CEP        |
| telefone   |
| e-mail     |



Cenário: Cadastro com falha devido a e-mail com formato inválido
Dado que a página de cadastro está aberta
E que "nome", "sobrenome", "pais" e "nome da rua e número da casa" são obrigatórios 
E que "CEP", "telefone" e "endereço de e-mail" são obrigatórios
E que "nome da empresa" e "apartamento, suíte, unidade, etc." são opcionais
Se o cliente preencher o campo "endereço de e-mail" com um formato inválido, ele não será cadastrado e receberá mensagem de alerta
