create table client (
    c_id bigint auto_increment not null primary key,
    c_name varchar(255) not null,
    c_surname varchar(255) not null,
    c_patronymic varchar(255),
    c_passport_series int not null,
    c_passport_number int not null,
    c_phone_number varchar(255) not null
);

create table worker (
    w_id bigint auto_increment not null primary key
    w_name varchar(255) not null,
    w_surname varchar(255) not null,
    w_patronymic varchar(255),
    w_position varchar(255) not null,
    w_other_data varchar(255)
);

create table pawneditem (
    pk_id bigint auto_increment not null primary key,
    pi_name varchar(255) not null,
    pi_description varchar(255) not null,
    pi_status varchar(255) not null
);

create table pricehistory (
    ph_id bigint auto_increment not null primary key,
    pawneditem_id bigint not null,
    ph_price_date date not null,
    ph_value decimal not null,
    FOREIGN KEY (pawneditem_id) REFERENCES pawneditem(pk_id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table pawncontact (
    pc_id bigint auto_increment not null primary key,
    c_id bigint not null,
    w_id bigint not null,
    pk_id bigint not null,
    pc_appraised_value decimal not null,
    pc_loan_amount decimal not null,
    pc_commission decimal not null,
    pc_due_date date not null,
    FOREIGN KEY (c_id) REFERENCES client(c_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (w_id) REFERENCES worker(w_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (pk_id) REFERENCES pawneditem(pk_id) ON DELETE CASCADE ON UPDATE CASCADE
);


