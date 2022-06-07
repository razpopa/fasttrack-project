
create table category (
	id serial primary key,
	"name" varchar(100)
);

create table product (
	id serial primary key,
	"name" varchar(150),
	description varchar(200),
	price real,
	image_name varchar(100),
	category_id int not null,
	constraint fk_category foreign key (category_id)
		references category(id)
);


 /***  Categories  ***/
insert into category ("name") values ('Tevi & accesorii canalizare interioara');
insert into category ("name") values ('Purificarea apei & contoare de apa');
insert into category ("name") values ('Sistem distributie apa');
insert into category ("name") values ('Izolatii tevi');


/***  Products  ***/
insert into product ("name", description, price, image_name, category_id)
	values ('Conector reducție Valrom', 'Conector reducție Valrom din polipropilenă Ø 110/90 mm', '8.00', 'tevi_si_accesorii_Conector_reductie_Valrom.jpg', '1');
insert into product ("name", description, price, image_name, category_id)
	values ('Tub Valrom', 'Tub Valrom din polipropilenă cu o mufă Ø 75 mm 3 m', '27.3', 'tevi_si_accesorii_Tub_Valrom.jpg', '1');
insert into product ("name", description, price, image_name, category_id)
	values ('Ramificație Valrom', 'Ramificație Valrom din polipropilenă Ø 110/110 mm 45°', '10.20', 'tevi_si_accesorii_Ramificatie_Valrom.jpg', '1');
insert into product ("name", description, price, image_name, category_id)
	values ('Piesă capăt Valrom', 'Piesă capăt Valrom coloană ventilare Ø 110 mm', '20.30', 'tevi_si_accesorii_Piesa_capat_Valrom.jpg', '1');


insert into product ("name", description, price, image_name, category_id)
	values ('Dispozitiv electronic anticalcar', 'Dispozitiv electronic anticalcar și antirugină Calmat Dmin 1/2"-Dmax 1 1/2"', '1199', 'purificarea_apei_Dispozitiv_electronic_anticalcar.jpg', '2');
insert into product ("name", description, price, image_name, category_id)
	values ('Stație tratare aquaPUR', 'Stație tratare aquaPUR Mix 25 Cab Q=1,2 mc/h sare 62 kg (cu by-pass)', '3625', 'purificarea_apei_Statie_tratare_aquaPUR.jpg', '2');
insert into product ("name", description, price, image_name, category_id)
	values ('Cartuș filtrant Valrom', 'Cartuș filtrant Valrom 10" cărbune activ bloc', '38.5', 'purificarea_apei_Cartus_filtrant.jpg', '2');
insert into product ("name", description, price, image_name, category_id)
	values ('Sistem de ultrafiltrare', 'Sistem de ultrafiltrare a apei potabile în 3 trepte PUR 3 UF 10"', '435', 'purificarea_apei_Sistem_de_ultrafiltrare.jpg', '2');
insert into product ("name", description, price, image_name, category_id)
	values ('Contor multijet', 'Contor multijet de curte 3/4"', '155', 'purificarea_apei_Contor_multijet.jpg', '2');


insert into product ("name", description, price, image_name, category_id)
	values ('Țeavă PEHD pentru apă', 'Țeavă PEHD pentru apă potabilă PE100 Ø20 mm PN10 (la metru)', '2.1', 'Sistem_distributie_teavă_PEHD.jpg', '3');
insert into product ("name", description, price, image_name, category_id)
	values ('Robinet compresiune', 'Robinet compresiune din polietilenă mufă-filet interior 25x3/4"', '13', 'Sistem_distributie_Robinet_compresiune.jpg', '3');


insert into product ("name", description, price, image_name, category_id)
	values ('Cochilie din vată bazaltică', 'Cochilie din vată bazaltică cașerată cu aluminiu ∅ 27 mm, grosime 30 mm, 1m', '16.8', 'Izolatii_tevi_Cochilie_din_vata_bazaltica.jpg', '4');
insert into product ("name", description, price, image_name, category_id)
	values ('Bandă aluminiu', 'Bandă aluminiu 75 mm 50 m', '43.5', 'Izolatii_tevi_Banda_aluminiu.jpg', '4');
insert into product ("name", description, price, image_name, category_id)
	values ('Izolație NMC Alfaflex', 'Izolație NMC Alfaflex din polietilenă pentru țeavă D35xG9mm 2m', '6.5', 'Izolatii_tevi_Izolatie_NMC_Alfaflex.jpg', '4');
