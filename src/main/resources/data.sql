DROP TABLE IF EXISTS donation;
create table donation (donation_id bigint not null, payment_status varchar(255), scheme_id bigint, user_id bigint, primary key (donation_id));

DROP TABLE IF EXISTS donationsequence;
create table donationsequence (next_val bigint);
insert into donationsequence values ( 100000 );

DROP TABLE IF EXISTS login;
create table login (login_id bigint not null auto_increment, mobile_number bigint, name varchar(255), password varchar(255), role varchar(255), primary key (login_id));

DROP TABLE IF EXISTS scheme;
create table scheme (scheme_id bigint not null auto_increment, description varchar(255), scheme_amount double precision, scheme_name varchar(255), scheme_status varchar(255), tax_benefit float, primary key (scheme_id));

DROP TABLE IF EXISTS user;
create table user (user_id bigint not null auto_increment, email_id varchar(255), mobile_number bigint, pan_number varchar(255), user_name varchar(255), user_status varchar(255), primary key (user_id));

alter table donation add constraint FK8ohjtufma9ixlbckv02wj4hrx foreign key (scheme_id) references scheme (scheme_id);
alter table donation add constraint FK2rx4oikd7rs8ddja8k9xc25my foreign key (user_id) references user (user_id);

INSERT INTO scheme (`scheme_id`, `description`, `scheme_amount`, `scheme_name`, `scheme_status`, `tax_benefit`) VALUES ('1', 'A man who lives everywhere lives nowhere.', '1000', 'Homeless Children', 'ACTIVE', '5');
INSERT INTO scheme (`scheme_id`, `description`, `scheme_amount`, `scheme_name`, `scheme_status`, `tax_benefit`) VALUES ('2', 'One in four kids in the India faces hunger.', '5000', 'Hunger Solution', 'ACTIVE', '8');

