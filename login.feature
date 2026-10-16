#language:pt

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Cenário: Login com sucesso

Dado que o usuário está na página de login
Quando ele insere o login e a senha válidos e clica no botão de login
Então ele deve ser redirecionado para a página do checkout e poder visualizar seus pedidos.

Esquema do Cenário: Login com falha

Dado que o usuário está na página de login
Quando ele insere o login "<usuario>" e a senha "<senha>" e clica no botão de login
Então ele deve ver a mensagem de alerta "Usuário ou senha inválidos"

Exemplos:
| usuario        | senha          |
| usuario_invalido | senha_valida |
| usuario_valido | senha_invalida |
| usuario_invalido | senha_invalida|


 