# Hallifax
Síntese:  Sistema complementar para Locação de Materiais de Construção desenvolvido em Delphi bem atual (Rio -  10.3) utilizando boas práticas, Clean Code,  MVC, ORM (Mapeamento objeto relacional), DAO (Direct Acess Object), Programação funcional, Design responsivo,  Programação Orientada a Objeto com interface sobre as classes concretas e com possibilidade de gerar UML e visual baseado em Designer Ux.

boas práticas, clean code, telas responsivas

Descrição: Sistema para Locação de Materiais de Construção (vide observação 2) desenvolvido em Delphi bem atual (Rio) com boas prática e, também:

- Uso do firedac que permite acessar base de dados Firebird (aqui utilizado), MySQL, PostgreeSQL, Oracle, SQL Server, SQLite. OBS> Não há uso de DM pois as conexões são criadas em tempo de execução

- Visual baseado em Design Ux / Ui

- Clean Code

- Programação funcional, respeitando os principio das boas práticas D.R.Y (Don' Repeat Yourself) que se adequa perfeitamente ao S (Simple Responsability) do SOLID

- Amplo uso de OOP (ou POO - Programação Orientada a Objecto)

- Programação orientada a Interface sobre as classes concretas

- ORM (Mapeamento objeto relacional)

- DAO (Direct Acess Object) desenvolvido seguindo os padrões do Design Pattern chamado Repository

- MVC - Model View Controller

- Stored Procedures no banco de dados (vide arquivo StorePeocedureCriar.txt): O uso das store procedures com comandos simples e essencias do Firebird que podem facilmente serem adaptados para outros SGBD.

- Designer/visual responsivo - basta testa mudar a resolução do monitor e notará que a tela e o todo o visual do sistema se adptará.

- Nomeação de arquivos seguindo os princípios do Delphi para geração de UML (caso necessário)

- O Arquivo caminho.txt possui apenas 1 linha, na qual se define o local e o nome do banco de dados. Uma forma bem simples e fácil de definir a localização do bando de dados. Caso esteje em uma rede antes da definição da pasta, basta colocar o endereço de rede.


Observação 1: Delphi 10.3.1 Rio ou superior. Tanto faz compilar para WIN32 ou WIN64. Foi testado no Berlim e também funcionou. Não funcionou no XE6 devido ao uso de recursos de versões mais recentes.

Observação 2: Feito para agregar features, características e recursos exclusivos para Locação de Materiais de Construção sobre um sistema já existentel. Por isso alguns recursos são apenas para Consulta.

Observação 3: O cliente, em tempo de desenvolvimento, encontrou um sistema que o atendia e cancelou o projeto.

Observação 4: Banco de dados Firebird 2.5
