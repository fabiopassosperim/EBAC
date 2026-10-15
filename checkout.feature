#language:pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Esquema do Cenário: Cadastro com sucesso

Dado que a página de cadastro está aberta
Dado que "nome", "sobrenome", "pais", "nome da rua e número da casa", "CEP", "telefone" e "endereço de e-mail" são obrigatórios 
Dado que "nome da empresa" e "apartamento, suíte, unidade, etc." são opcionais
Quando o cliente preencher todos os campos obrigatórios corretamente
Então ele é cadastrado com sucesso.

Esquema do Cenário: Cadastro com falha por campo obrigatório não preenchido

Dado que a página de cadastro está aberta
Quando deixo o campo obrigatório "<campo>" sem preencher
Quando tento concluir o cadastro
Então o cadastro não deve ser realizado
Então uma mensagem de alerta deve ser exibida

Exemplos:
| campo      |
| nome       |
| sobrenome  |
| país       |
| endereço   |
| CEP        |
| telefone   |
| e-mail     |

Esquema do Cenário: Cadastro com falha devido a e-mail com formato inválido

Dado que a página de cadastro está aberta
Dado que "nome", "sobrenome", "pais", "nome da rua e número da casa", "CEP", "telefone" e "endereço de e-mail" são obrigatórios
Dado que "nome da empresa" e "apartamento, suíte, unidade, etc." são opcionais
Quando o cliente preencher o campo "endereço de e-mail" com um formato inválido
Então ele não será cadastrado e receberá mensagem de alerta
