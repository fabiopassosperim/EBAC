#language:pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

Cenário: Cadastro com sucesso

Dado que a página de cadastro está aberta
Quando o cliente preencher todos os campos obrigatórios corretamente e clica em "finalizar compra"
Então a conta deve ser criada e o sistema deve confirmar o cadastro com uma mensagem de sucesso.

Esquema do Cenário: Cadastro com falha por campo obrigatório não preenchido

Dado que a página de cadastro está aberta
Quando o cliente deixa o campo obrigatório "<campo>" vazio e clica em "finalizar compra"
Então o cadastro não deve ser realizado e uma mensagem de alerta deve ser exibida.

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
Quando o cliente preencher o campo "endereço de e-mail" com um formato inválido e clica em "finalizar compra"
Então ele não será cadastrado e receberá mensagem de alerta.
