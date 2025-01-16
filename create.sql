drop schema fullycycle cascade;
create schema fullycycle;

create table fullycycle.event (
    event_id uuid,
    description text,
    price numeric,
    capacity integer
);

create table fullycycle.ticket (
    ticket_id uuid,
    event_id uuid,
    email text,
    status text
);

create table fullycycle.transaction (
    transaction_id uuid,
    ticket_id uuid,
    event_id uuid,
    tid text,
    price numeric,
    status text
);

insert into fullycycle.event (event_id, description, price, capacity) values
('bf6a9b3d-4d5c-4c9d-bf3b-4a091b05dc76', 'Foo Fighters', 22.00, 300, 100000);
