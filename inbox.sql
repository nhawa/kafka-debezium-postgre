CREATE TABLE inbox (
	id serial NOT NULL,
	payload text,
	send_at timestamp NOT NULL,
	sent_at timestamp NOT NULL,
	is_ready bool NOT null default false,
	CONSTRAINT inbox_pkey PRIMARY KEY (id)
);
alter table inbox replica identity full;
select * from inbox;