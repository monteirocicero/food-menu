DROP TABLE  IF EXISTS public."chain";

CREATE TABLE public."chain" (
	id serial NOT NULL,
	"name" varchar(80) NOT NULL,
	CONSTRAINT chain_name_key UNIQUE (name),
	CONSTRAINT chain_pkey PRIMARY KEY (id)
);

DROP TABLE  IF EXISTS public.item;

CREATE TABLE public.item (
	id serial NOT NULL,
	is_available bool NULL,
	"name" varchar(80) NOT NULL,
	CONSTRAINT item_pkey PRIMARY KEY (id)
);

DROP TABLE  IF EXISTS public.item_group;

CREATE TABLE public.item_group (
	id serial NOT NULL,
	group_id int4 NULL,
	item_id int4 NULL,
	CONSTRAINT item_group_pkey PRIMARY KEY (id),
	CONSTRAINT fk_group_item FOREIGN KEY (group_id) REFERENCES item(id),
	CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES item(id)
);

DROP TABLE  IF EXISTS public.restaurant;

CREATE TABLE public.restaurant (
	id serial NOT NULL,
	"name" varchar(80) NOT NULL,
	chain_id int4 NULL,
	CONSTRAINT restaurant_name_key UNIQUE (name),
	CONSTRAINT restaurant_pkey PRIMARY KEY (id),
	CONSTRAINT fk_chain FOREIGN KEY (chain_id) REFERENCES chain(id)
);

DROP TABLE  IF EXISTS public.menu;

CREATE TABLE public.menu (
	id serial NOT NULL,
	"name" varchar(80) NOT NULL,
	restaurant_id int4 NULL,
	chain_id int4 NULL,
	item_id int4 NULL,
	CONSTRAINT menu_pkey PRIMARY KEY (id),
	CONSTRAINT fk_chain FOREIGN KEY (chain_id) REFERENCES chain(id),
	CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES item(id),
	CONSTRAINT fk_restaurant FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);

DROP TABLE  IF EXISTS public."option";

CREATE TABLE public."option" (
	id serial NOT NULL,
	"name" varchar(80) NOT NULL,
	CONSTRAINT option_pkey PRIMARY KEY (id)
);

DROP TABLE  IF EXISTS public.option_group;

CREATE TABLE public.option_group (
	id serial NOT NULL,
	group_id int4 NULL,
	option_id int4 NULL,
	CONSTRAINT option_group_pkey PRIMARY KEY (id),
	CONSTRAINT fk_group_option FOREIGN KEY (group_id) REFERENCES option(id),
	CONSTRAINT fk_item FOREIGN KEY (option_id) REFERENCES option(id)
);