<h1 align="center"> Agenda de Reuniões </h1>
Web app simples no qual os usuários podem reservar salas de reunião.


## Status do Projeto: Concluido :heavy_check_mark:


## O que a aplicação é capaz de fazer :checkered_flag:

- Criar, Listar e Deletar Salas de Reuniāo;
- Dentro do Calendário é possível clicar na data e reservar um horário para uma reunião;
- Os horários são das 08:00 às 18:00;
- Nāo é possível reservar uma sala em um horário que já foi reservado, o app envia um alerta para o usuário;
- É possível reservar vários horários no mesmo dia ou, em dias e meses diferentes;
- Apenas o usuário que criou a sala de reuniões pode exclui-la;
- O usuário que criou a reserva pode deleta-la, caso não possa comparecer;


## Detalhes da Solução aplicada :bulb:

- Criei um novo projeto rails, um repositório no GitHub e desenvolvi todo projeto com Ruby On Rails.
- O scheema trabalha a relação de uma tabela de Users, outra de Rooms e uma join table Reservations. Usei a gem do Devise para criar o User.
- No controller de Rooms, desenvolvi actions para listar, criar e deletar as salas de reuniões (rooms), o usuário logado pode criar e excluir a própria sala, o contrário não ocorre, os botões de deletar não ficam disponíveis caso o user não seja o responsável por aquela reserva (reservation).
- Optei pela gem Simple Calendar para criar a agenda com as Reservations, uma solução simples e eficaz para o projeto.
- Cada sala de reuniāo (room), pode ter várias reservas (reservations), e através de uma condição nāo é possível inserir mais de uma reserva em um mesmo horário e na mesma sala (room).
- Do mesmo modo, cada user pode reservar vários horários diferentes e em diferentes salas.

## Aplicação de Testes :mag_right:

- No terminal:
  - rails test:system
- Criei testes simples de sistema e unitário usando a gem Capybara.
  - A primeira verificação é antes de um usuário estar logado, na homepage, verifica se existe a tag 'h2' com texto "Sala de Reuniões".
  - Depois criei um usuário fake para que quando o user estiver logado, ele possa criar uma nova sala de reuniões, adcionando um nome à ela.
  - E por fim, criei um teste que verifica se o usuário cadastrou seu nome de forma captalized, ou seja, com a primeira letra do nome maiúscula e as demais minúsculas.


## Libs utilizadas :books:

- gem Simple Calendar
- gem Devise
- gem Capybara


## Passos para rodar a aplicação :computer:

- No GitHub clique em 'Fork'
- No terminal, acesse a pasta que deseja salvar o projeto:
  - cd PROJECT_FOLDER
- Faça o clone do projeto:
  - git clone git@github.com:renatabresolin/schedule.git
- Installe as dependências:
  - bundle install
  - yarn install
  - rails db:create
  - rails db:migrate
  - rails s
- Agora acesse no browser a porta: http://localhost:3000/

## Deploy da Aplicação com HEROKU :dash:

> https://agenda-blox.herokuapp.com/

