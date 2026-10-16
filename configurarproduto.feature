#language:pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto, escolher a quantidade
Para inserir no carrinho

Esquema do Cenário: Escolha de características do produto e quantidade

Dado que o cliente está na página do produto "Augusta Pullover Jacket"
Quando ele selecionar o tamanho "<tamanho>", a cor "<cor>" e a quantidade "<quantidade>" e clicar em "comprar"
Então o produto deve ser adicionado ao carrinho com o tamanho "<tamanho>", a cor "<cor>" e a quantidade "<quantidade>"

Exemplos:
| tamanho | cor    | quantidade |
| XS      | Blue   | 1          |
| S       | Orange | 2          |
| M       | Red    | 3          |
| L       | Blue   | 5          |
| XL      | Orange | 10         |

Cenário: Limpar as opções selecionadas

Dado que o cliente está na página do produto "Augusta Pullover Jacket" e selecionou uma opção de tamanho, uma de cor e alterou a quantidade
Quando ele clicar em "limpar"
Então as opções de tamanho, cor devem ficar sem seleção e a quantidade deve voltar para 1.

Cenário: Adicionar produto ao carrinho sem selecionar características

Dado que o cliente está na página do produto "Augusta Pullover Jacket" e não selecionou alguma opção de tamanho e cor.
Quando ele clicar em "comprar"
Então uma mensagem de erro deve ser exibida informando que é necessário selecionar as características do produto

Cenário: Adicionar produto ao carrinho com quantidade inválida

Dado que o cliente está na página do produto "Augusta Pullover Jacket" e selecionou uma quantidade inválida (menor que 1 ou maior que 10)
Quando ele clicar em "comprar"
Então uma mensagem de erro deve ser exibida informando que a quantidade selecionada é inválida.
