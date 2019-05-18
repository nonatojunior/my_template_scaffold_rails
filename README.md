# Template Scaffold Rails

### Este template foi implementado para facilitar a geração de scaffolds no desenvolvimento de projetos rails. Como template definimos o framework Bootstrap.

## Orientaçõa para adicionar no projeto.

### Para adicionar o template customizado no seu projeto rails, basta clonar a pasta templates para dentros do diretório lib do seu projeto.

> cd nome_projeto/lib

> git clone https://github.com/nonatojunior/my_template_scaffold_rails/tree/master/templates

## Observações:

### Dentro do repositório https://github.com/nonatojunior/my_template_scaffold_rails você encontrará um diretório locates com o arquivo **pt-BR.yml** este arquivo deverá ser clonado dentro do diretório **/config/locates** do seu projeto, pois este arquivo fará a tradução dos models e atributos gerados pelo comando scaffold.

### Você verá também o arquivo initializers/inflactions.rb, este arquivo é responsável pela pluralização e singularização dos arquivos.

### A pasta **helpers** possui alguns métodos pré definidos.