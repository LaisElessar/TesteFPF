# TesteFPF
Olá, para uma melhor experiência na avaliação do meu projeto, deixo em seguida o codigo para o banco de dados

--------------------------------------------------------------------------------------------------------------
create database projetos;
use projetos;

create table projeto(
codigo integer not null auto_increment primary_key,
nome text not null,
dataInicio not null,
dataFinal not null,
valor float not null,
risco integer not null,
participantes text not null);

---------------------------------------------------------------------------------------------------------------
Ferramentas utilizadas:
Eclipse IDE
Mysql QueryBrowser
Servidor ApacheTomCat9
---------------------------------------------------------------------------------------------------------------
O projeto se inicia com o index.html onde tem um link redirecionando para a página de listagem. Nesta página, 
há opções de cadastrar, editar, excluir e simular um projeto. Caso não esteja nenhum projeto cadastrado, somente
a opção de cadastrar estará disponível. Em relação a simulação, este, quando clicado, abrirá um dialog com a opção
de inserção do valor do investimento para o referente projeto, quando clicar em "calcular", será mostrado ao usuário
o valor da simulação do investimento baseado no valor digitado e no risco que o projeto tem. Para as demais opções, 
acredito que o entendimento seja mais simples. 
