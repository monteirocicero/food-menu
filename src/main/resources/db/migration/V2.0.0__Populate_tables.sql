-- chain
INSERT INTO public."chain" ("name") VALUES ('mec donaldis');
INSERT INTO public."chain" ("name") VALUES ('rabibis');
INSERT INTO public."chain" ("name") VALUES ('burguer king');

-- item
INSERT INTO public."item" (is_available, "name") VALUES (TRUE, 'Chips');
INSERT INTO public."item" (is_available, "name") VALUES (TRUE, 'Double Cheese Burguer');
INSERT INTO public."item" (is_available, "name") VALUES (TRUE, 'Cola');
INSERT INTO public."item" (is_available, "name") VALUES (TRUE, 'Combo nº5');


-- restaurant
INSERT INTO public."restaurant" ("name", chain_id) select 'Macdonaldis da Percy', id from public."chain" where name='mec donaldis';
INSERT INTO public."restaurant" ("name", chain_id) select 'Rabibis da Josefina', id from public."chain" where name='rabibis';
INSERT INTO public."restaurant" ("name", chain_id) select 'Burguer do Reinaldo', id from public."chain" where name='burguer king';

-- option
INSERT INTO public."option" ("name") VALUES('Salad');
INSERT INTO public."option" ("name") VALUES('Extra burger');
INSERT INTO public."option" ("name") VALUES('Bacon');
INSERT INTO public."option" ("name") VALUES('Onions');
INSERT INTO public."option" ("name") VALUES('Onion rings');
INSERT INTO public."option" ("name") VALUES('Cola');
INSERT INTO public."option" ("name") VALUES('Dr Pepper');
INSERT INTO public."option" ("name") VALUES('Orange');
INSERT INTO public."option" ("name") VALUES('Lemon');

INSERT INTO public."option" ("name") VALUES('Pick at least two among');
INSERT INTO public."option" ("name") VALUES('Side dish (pick one)');
INSERT INTO public."option" ("name") VALUES('Chips');
INSERT INTO public."option" ("name") VALUES('Optionals (Pick any)');
INSERT INTO public."option" ("name") VALUES('Beverage (pick one)');
INSERT INTO public."option" ("name") VALUES('Soda');
INSERT INTO public."option" ("name") VALUES('Juice');

-- option group
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Pick at least two among'), (select id from public."option" where name='Onions'));
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Pick at least two among'), (select id from public."option" where name='Salad'));
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Pick at least two among'), (select id from public."option" where name='Extra Burger'));
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Pick at least two among'), (select id from public."option" where name='Bacon'));

-- side dish
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Side dish (pick one)'), (select id from public."option" where name='Onion rings'));
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Side dish (pick one)'), (select id from public."option" where name='Chips'));


INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Chips'), (select id from public."option" where name='Optionals (Pick any)'));

INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Optionals (Pick any)'), (select id from public."option" where name='Bacon'));

INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Beverage (pick one)'), (select id from public."option" where name='Soda'));

-- soda
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Soda'), (select id from public."option" where name='Cola'));
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Soda'), (select id from public."option" where name='Dr Pepper'));

-- juice
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Juice'), (select id from public."option" where name='Orange'));
INSERT INTO public."option_group" (group_id, option_id) VALUES((select id from public."option" where name='Juice'), (select id from public."option" where name='Lemon'));


-- item group
INSERT INTO public."item_group" (group_id, item_id) VALUES((select id from public."item" where name='Combo nº5'), (select id from public."item" where name='Double Cheese Burger'));

--menu
INSERT INTO public."menu" ("name", restaurant_id, chain_id, item_id) VALUES('Menu Padrão', (select id from public."restaurant" where name='Macdonaldis da Percy'), (select id from public."chain" where name='mec donaldis'), (select id from public."item" where name='Chips'));
INSERT INTO public."menu" ("name", restaurant_id, chain_id, item_id) VALUES('Menu Padrão', (select id from public."restaurant" where name='Macdonaldis da Percy'), (select id from public."chain" where name='mec donaldis'), (select id from public."item" where name='Double Cheese Burguer'));
INSERT INTO public."menu" ("name", restaurant_id, chain_id, item_id) VALUES('Menu Padrão', (select id from public."restaurant" where name='Macdonaldis da Percy'), (select id from public."chain" where name='mec donaldis'), (select id from public."item" where name='Cola'));
INSERT INTO public."menu" ("name", restaurant_id, chain_id, item_id) VALUES('Menu Padrão', (select id from public."restaurant" where name='Macdonaldis da Percy'), (select id from public."chain" where name='mec donaldis'), (select id from public."item" where name='Combo nº5'));
