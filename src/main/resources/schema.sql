SET MODE Oracle;

drop table if exists widgets;
create table widgets (
  id NUMBER(38, 0),
  name VARCHAR(20) NOT NULL
);
