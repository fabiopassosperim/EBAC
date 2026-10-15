#language:pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para inserir no carrinho

Esquema do Cenário: Escolha de características do produto e quantidade

Dado que estou na página do produto "Augusta Pullover Jacket"
E que há opções de tamanho "XS", "S", "M", "L" e "XL"
E que há opções de cor "Blue", "Orange" e "Red"
Quando seleciono o tamanho "<tamanho>"
E seleciono a cor "<cor>"
E seleciono a quantidade <quantidade>
E clico em "comprar"
Então o produto deve ser adicionado ao carrinho com o tamanho "<tamanho>", a cor "<cor>" e a quantidade <quantidade>

Exemplos:
| tamanho | cor    | quantidade |
| XS      | Blue   | 1          |
| S       | Orange | 2          |
| M       | Red    | 3          |
| L       | Blue   | 5          |
| XL      | Orange | 10         |

Cenário: Limpar as opções selecionadas
Dado que estou na página do produto "Augusta Pullover Jacket"
E selecionei alguma opção de tamanho, cor e/ou quantidade
Quando eu clicar em "limpar"
Então as opções de tamanho, cor e quantidade devem ser resetadas.

Cenário: Adicionar produto ao carrinho sem selecionar características
Dado que estou na página do produto "Augusta Pullover Jacket"
E deixei de selecionar uma, duas ou três das opções de tamanho, cor ou quantidade
Quando eu clicar em "comprar"
Então uma mensagem de erro deve ser exibida informando que é necessário selecionar as características do produto

Cenário: Adicionar produto ao carrinho com quantidade inválida
Dado que estou na página do produto "Augusta Pullover Jacket"
E selecionei uma quantidade inválida (menor que 1 ou maior que 10)
Quando eu clicar em "comprar"
Então uma mensagem de erro deve ser exibida informando que a quantidade selecionada é inválida.