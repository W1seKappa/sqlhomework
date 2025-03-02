create table experiment (ex_id bigint not null primary key);

rename table experiment to experiment_rename;

insert into experiment_renamed (name)
    values  ('Данила'),
            ('Варя'),
            ('Марина'),
            ('Екатерина'),
            ('Люда');

truncate table experiment_renamed;

drop table experiment_renamed;

alter table experiment add n_column varchar(100);

alter table experiment drop n_column_renamed;


update client set c_surname = 'Маврин'
        where c_surname = 'Бобков';

delete from worker where w_position = 'Юрист';