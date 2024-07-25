create table tb_booking (days integer not null, total_value decimal(38,2), booking_id bigint not null auto_increment, check_in_date_planned datetime(6), check_in_id bigint, check_out_date_planned datetime(6), check_out_id bigint, room_id bigint, user_id bigint, booking_status enum ('CANCELED','CONFIRMED','FINISHED'), primary key (booking_id))  engine=InnoDB;
 create table tb_booking_hospitalities (booking_id bigint not null, hospitality_id bigint not null)  engine=InnoDB;
 create table tb_check_in (check_in_id bigint not null auto_increment, date datetime(6), user_id bigint, primary key (check_in_id))  engine=InnoDB;
 create table tb_check_out (check_in_id bigint not null auto_increment, date datetime(6), user_id bigint, primary key (check_in_id))  engine=InnoDB;
 create table tb_comment (comment_id bigint not null auto_increment, date datetime(6), room_id bigint, user_id bigint, text varchar(255), primary key (comment_id))  engine=InnoDB;
 create table tb_convenience (convenience_id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (convenience_id))  engine=InnoDB;
 create table tb_hospitality (price decimal(38,2), hospitality_id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (hospitality_id))  engine=InnoDB;
 create table tb_phone (phone_id bigint not null auto_increment, user_id bigint, ddd varchar(255), ddi varchar(255), number varchar(255), primary key (phone_id))  engine=InnoDB;
 create table tb_room (available bit, capacity integer, floor integer, price decimal(38,2), room_id bigint not null auto_increment, description varchar(255), type enum ('DUPLO','SINGLE','SUITE'), primary key (room_id))  engine=InnoDB;
 create table tb_user (birth datetime(6), user_id bigint not null auto_increment, cpf varchar(255), email varchar(255), first_name varchar(255), last_name varchar(255), password varchar(255), role enum ('ADMINISTRATOR','CLIENT','EMPLOYEE'), primary key (user_id))  engine=InnoDB;
 alter table tb_booking add constraint UK_sws36l13sqqyc980fwsg1tu14 unique (check_in_id);
 alter table tb_booking add constraint UK_8scq8567jojwp4flmqaujxxuj unique (check_out_id);
 alter table tb_booking add constraint FKj4v543yqul0h29gnyoct9jhdb foreign key (check_in_id) references tb_check_in (check_in_id);
 alter table tb_booking add constraint FK60ll3qd5vqy4nar889nmj7voq foreign key (check_out_id) references tb_check_out (check_in_id);
 alter table tb_booking add constraint FK8q8x86sn6gryph3pemitb2gea foreign key (user_id) references tb_user (user_id);
 alter table tb_booking add constraint FKqf1c9mtlusmub4e5eac12rxhm foreign key (room_id) references tb_room (room_id);
 alter table tb_booking_hospitalities add constraint FKqd436sbyqujk0cfcbgp1ui7hb foreign key (hospitality_id) references tb_hospitality (hospitality_id);
 alter table tb_booking_hospitalities add constraint FK6bynaegxqg34mtt2ag1agi7hy foreign key (booking_id) references tb_booking (booking_id);
 alter table tb_check_in add constraint FKcsl7rvf4es1c827yfkb236i5b foreign key (user_id) references tb_user (user_id);
 alter table tb_check_out add constraint FK5e421putf53duygs7ntux36sn foreign key (user_id) references tb_user (user_id);
 alter table tb_comment add constraint FK45c1cuqlljd60ihc9j0962ekq foreign key (user_id) references tb_user (user_id);
 alter table tb_comment add constraint FKtdbiku5wlnum27f8i4ppi1u38 foreign key (room_id) references tb_room (room_id);
 alter table tb_phone add constraint FKjjbcywxyw2amay8m6ow0t9yxj foreign key (user_id) references tb_user (user_id);