select * from class;
INSERT INTO class (id_level, id_class, description) VALUES (1,999,'Spain Comedy');

select * from pay;                 
create table pay (id_pay int not null primary key auto_increment,
				  amount REAL NOT NULL DEFAULT 0,
                  currency Varchar(20) NOT NULL,
                  date_pay date NOT NULL,
                  pay_type VARCHAR(50),
                  id_system_user Int not null,
                  id_game Int not null);
                  
INSERT INTO pay VALUES (null, 250, 'U$S', '2021-07-22', 'Paypal', '850', '77');

INSERT INTO pay VALUES
(NULL, 250, 'U$S', '2021-07-22', 'Paypal', '850', '77'),
(NULL, 3700, 'Pesos Arg', '2021-07-22', 'Visa', '38', '31'),
(NULL, 180, 'Libras', '2021-07-22', 'Transfer', '156', '16');

select * from pay;

UPDATE pay
SET date_pay = current_date - 1
where date_pay = '2021-07-21';
set sql_safe_updates=0;
-- update pay 
/*set currency = ''*/

