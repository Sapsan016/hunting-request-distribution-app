delete from resources;
delete from requests;
delete from resource_requesters;

ALTER TABLE resources ALTER COLUMN resource_id RESTART WITH 1;
ALTER TABLE requests ALTER COLUMN request_id RESTART WITH 1;


insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('China', 'Cat, miner''s', '2023-04-22', '2023-06-08', 19);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Japan', 'Grey mouse lemur,', '2023-11-19', '2024-05-11', 32);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Poland', 'South African hedgehog', '2023-04-26', '2023-12-29', 42);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Russia', 'Bear, polar', '2023-05-17', '2023-07-29', 35);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Mexico', 'Shrike, common boubou', '2023-04-13', '2022-06-30', 20);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Portugal', 'Grey mouse lemur', '2023-05-11', '2023-11-09', 56);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Serbia', 'Bear, polar', '2023-07-03', '2023-10-27', 37);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('China', 'Eagle, bald', '2023-04-09', '2023-07-22', 63);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Kenya', 'Puku', '2023-05-27', '2023-11-28', 16);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Ukraine', 'Emerald green tree boa', '2023-04-13', '2023-09-09', 14);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('China', 'Asian openbill', '2023-06-25', '2023-12-01', 63);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('United States', 'Vulture, king', '2023-04-09', '2023-12-03', 37);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('China', 'Lion, mountain', '2023-05-28', '2023-10-24', 22);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Belarus', 'Bear, polar', '2023-07-13', '2023-12-02', 23);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Portugal', 'Lion, mountain', '2023-07-13', '2023-12-25', 33);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('China', 'Lynx, african', '2023-05-14', '2023-07-04', 45);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Greece', 'Blue catfish', '2023-04-06', '2023-10-20', 12);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('United States', 'Grey mouse lemur', '2023-05-12', '2023-08-27', 13);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('China', 'Lion, mountain', '2023-04-18', '2023-09-01', 33);
insert into resources (region, resource_name, start_date, end_date, resource_quote) values ('Sweden', 'Bear, polar', '2023-08-04', '2023-10-04', 44);



insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Meneer', 'Franz', 'Mile', 'MASS', 6609, 9350613, 3, 20, 'PENDING', '2023-05-08 01:05:41');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Alti', 'Tiebold', 'Elga', 'DRAW', 4677, 903590, 6, 8, 'PENDING', '2023-08-12 21:51:57');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Drogan', 'Brandy', 'Consalve', 'MASS', 6000, 7837792, 9, 7, 'PENDING', '2023-05-31 23:53:22');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Schwandermann', 'Ermanno', 'Publicité', 'DRAW', 9552, 452922, 15, 28, 'PENDING', '2023-05-22 22:23:23');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Chopin', 'Agretha', 'Mahélie', 'MASS', 1924, 256686, 6, 8, 'PENDING', '2023-09-28 18:32:58');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Brockington', 'Kamila', 'Vénus', 'MASS', 6551, 952545, 9, 27, 'PENDING', '2023-07-12 22:54:57');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Walcher', 'Marquita', 'Ruì', 'DRAW', 5225, 417240, 20, 3, 'PENDING', '2023-06-30 02:44:23');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Knok', 'Roderich', 'Léandre', 'MASS', 5155, 483808, 20, 44, 'PENDING', '2023-04-27 01:14:21');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Marnane', 'Krissy', 'Mélina', 'MASS', 7205, 213216, 2, 42, 'PENDING', '2023-07-03 17:05:48');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Schwandermann', 'Ermanno', 'Publicité', 'DRAW', 9552, 452922, 15, 28, 'PENDING', '2023-05-22 22:23:23');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Josifovic', 'Thomasa', 'Pélagie', 'MASS', 9947, 783279, 12, 32, 'PENDING', '2023-11-06 22:32:28');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('McOrkil', 'Daron', 'Mélys', 'MASS', 3963, 241932, 8, 11, 'PENDING', '2023-10-06 01:50:02');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Jirasek', 'Gabrielle', 'Táng', 'DRAW', 9232, 619776, 1, 17, 'PENDING', '2023-10-14 15:05:11');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Taudevin', 'Teddi', 'Börje', 'MASS', 6385, 631135, 17, 30, 'PENDING', '2023-09-14 05:59:55');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Espinet', 'Ladonna', 'Anaël', 'MASS', 3331, 590858, 7, 9, 'PENDING', '2023-11-28 13:46:44');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Beards', 'Lemmie', 'Publicité', 'MASS', 8479, 493273, 2, 34, 'PENDING', '2023-07-15 02:35:11');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ojeda', 'Pauly', 'Mà', 'MASS', 6556, 468496, 5, 33, 'PENDING', '2023-05-24 09:08:48');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Umbert', 'Christal', 'Andréanne', 'MASS', 1419, 292816, 17, 49, 'PENDING', '2023-09-27 20:25:58');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Jirasek', 'Gabrielle', 'Táng', 'DRAW', 9232, 619776, 1, 17, 'PENDING', '2023-10-14 15:05:11');

insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sidery', 'Stafani', 'Camélia', 'DRAW', 6316, 360745, 4, 20, 'PENDING', '2023-11-27 21:08:55');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Beadman', 'Carmelina', 'Tán', 'MASS', 1456, 983128, 1, 34, 'PENDING', '2023-06-07 11:55:27');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Hawken', 'Lyon', 'Mélanie', 'MASS', 7694, 848315, 6, 37, 'PENDING', '2023-12-12 16:26:53');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sergeant', 'Merissa', 'Håkan', 'MASS', 6931, 279977, 14, 40, 'PENDING', '2023-07-14 05:57:18');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Polgreen', 'Lionello', 'Sélène', 'DRAW', 5077, 127392, 14, 36, 'PENDING', '2023-11-11 07:35:03');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sherville', 'Dominga', 'Clélia', 'DRAW', 8339, 454632, 3, 43, 'PENDING', '2023-10-08 02:14:18');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Orkney', 'Spike', 'Torbjörn', 'DRAW', 8735, 476216, 2, 42, 'PENDING', '2023-06-05 03:46:23');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Kelbie', 'Zacharie', 'Maëlann', 'MASS', 8024, 866960, 7, 16, 'PENDING', '2023-07-24 21:23:59');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Citrine', 'Gorden', 'Bécassine', 'MASS', 4841, 350645, 9, 6, 'PENDING', '2023-05-13 03:30:52');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Lund', 'Jobie', 'Åslög', 'DRAW', 9630, 869855, 8, 40, 'PENDING', '2023-09-18 05:41:08');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ekins', 'Mariette', 'Josée', 'MASS', 2999, 103394, 14, 23, 'PENDING', '2023-12-18 10:54:47');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Fardo', 'Allan', 'Irène', 'MASS', 5700, 108247, 14, 35, 'PENDING', '2023-07-21 11:08:22');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Vasiliu', 'Cordelia', 'Sélène', 'MASS', 5086, 466207, 17, 27, 'PENDING', '2023-08-25 22:52:13');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Waterman', 'Stafani', 'Marie-thérèse', 'MASS', 6661, 692813, 17, 20, 'PENDING', '2023-05-26 12:13:21');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Redmille', 'Augie', 'Sòng', 'MASS', 9916, 635258, 9, 24, 'PENDING', '2023-06-19 19:23:21');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Carmont', 'Garik', 'Amélie', 'MASS', 5948, 756023, 18, 18, 'PENDING', '2023-08-12 13:38:23');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Farmiloe', 'Johanna', 'Nuó', 'MASS', 1225, 186289, 17, 49, 'PENDING', '2023-12-03 19:55:28');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Gaukrodge', 'Anissa', 'Ophélie', 'DRAW', 9248, 870026, 20, 3, 'PENDING', '2023-07-14 15:21:09');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Gruszka', 'Marco', 'Irène', 'MASS', 5612, 326475, 20, 1, 'PENDING', '2023-04-25 11:52:36');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Bridgman', 'Jaymie', 'Yú', 'DRAW', 2576, 923710, 1, 28, 'PENDING', '2023-06-12 08:08:37');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Cramer', 'Florian', 'Maëlla', 'MASS', 3980, 359135, 16, 8, 'PENDING', '2023-07-01 21:56:18');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sealy', 'Charisse', 'Alizée', 'MASS', 8595, 172241, 1, 48, 'PENDING', '2023-06-01 13:22:39');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Pettingill', 'Alix', 'Loïc', 'DRAW', 6682, 573994, 19, 15, 'PENDING', '2023-05-30 16:41:25');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Rossander', 'Rosene', 'Maïlys', 'DRAW', 4950, 837125, 18, 3, 'PENDING', '2023-10-26 17:53:41');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Kirkby', 'Keslie', 'Pål', 'DRAW', 1478, 962285, 4, 43, 'PENDING', '2023-11-17 22:39:14');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Lohoar', 'Arabelle', 'Judicaël', 'MASS', 9864, 173959, 17, 9, 'PENDING', '2023-07-15 19:27:34');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ciccone', 'Roger', 'Maïté', 'MASS', 8055, 253889, 8, 17, 'PENDING', '2023-07-31 14:47:32');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sherwyn', 'Leopold', 'Solène', 'MASS', 5594, 819938, 15, 32, 'PENDING', '2023-04-23 15:10:18');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Treece', 'Hillyer', 'Uò', 'DRAW', 2947, 548906, 8, 12, 'PENDING', '2023-05-12 17:37:48');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Farmiloe', 'Christin', 'Táng', 'MASS', 4322, 967185, 12, 3, 'PENDING', '2023-05-09 23:52:20');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Mugridge', 'Novelia', 'Aí', 'MASS', 6511, 747134, 5, 17, 'PENDING', '2023-06-14 00:18:53');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sivill', 'Marsha', 'Ruì', 'MASS', 5247, 846733, 10, 38, 'PENDING', '2023-07-07 16:04:48');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ferneley', 'Jud', 'Hélèna', 'MASS', 9720, 772353, 13, 23, 'PENDING', '2023-09-18 15:00:55');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Booley', 'Kenna', 'Fèi', 'MASS', 6789, 792331, 16, 40, 'PENDING', '2023-05-21 21:03:42');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sterricks', 'Haley', 'Mégane', 'MASS', 5232, 109405, 16, 29, 'PENDING', '2023-09-28 00:51:10');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Brayfield', 'Bert', 'Eléonore', 'MASS', 1016, 767186, 5, 37, 'PENDING', '2023-09-19 15:04:52');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Eglise', 'Reginald', 'Naéva', 'DRAW', 7282, 700647, 14, 40, 'PENDING', '2023-10-12 04:25:00');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Emloch', 'Irvin', 'Marie-ève', 'MASS', 6066, 481743, 1, 22, 'PENDING', '2023-07-02 04:31:36');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Maundrell', 'Val', 'Almérinda', 'MASS', 3779, 528368, 4, 23, 'PENDING', '2023-06-27 13:59:39');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sorton', 'Ardenia', 'Joséphine', 'MASS', 6576, 333307, 5, 11, 'PENDING', '2023-09-08 02:55:27');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Troni', 'Roz', 'Océanne', 'DRAW', 5230, 893885, 12, 7, 'PENDING', '2023-10-05 09:59:01');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Battershall', 'Manuel', 'Inès', 'DRAW', 2246, 504789, 6, 45, 'PENDING', '2023-09-01 06:26:30');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Dempsey', 'Cecil', 'Léonore', 'MASS', 8674, 636096, 8, 37, 'PENDING', '2023-10-31 18:14:00');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Vasin', 'Kiel', 'Maïlis', 'DRAW', 5286, 572412, 5, 18, 'PENDING', '2023-09-27 16:01:36');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Burman', 'Dyan', 'Mélissandre', 'MASS', 8589, 443958, 12, 14, 'PENDING', '2023-07-13 12:25:19');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('McLeod', 'Julianne', 'Danièle', 'MASS', 4917, 938965, 3, 11, 'PENDING', '2023-10-05 07:20:43');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Caven', 'Darnall', 'Gérald', 'DRAW', 5851, 815294, 9, 32, 'PENDING', '2023-09-04 09:45:36');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Rosiello', 'Rebekkah', 'Cunégonde', 'MASS', 2404, 367750, 14, 45, 'PENDING', '2023-12-13 01:36:40');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Gadie', 'Brigitte', 'Frédérique', 'MASS', 3487, 660856, 7, 35, 'PENDING', '2023-10-21 13:28:05');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Vigus', 'Willi', 'Léone', 'MASS', 9781, 641950, 9, 40, 'PENDING', '2023-09-17 08:41:52');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Airlie', 'Helga', 'Lèi', 'DRAW', 9165, 745086, 3, 47, 'PENDING', '2023-08-10 08:14:42');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Findon', 'Livvyy', 'Cloé', 'MASS', 8175, 436386, 15, 44, 'PENDING', '2023-06-01 08:01:22');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Worts', 'Emmaline', 'Dù', 'DRAW', 5506, 684588, 14, 10, 'PENDING', '2023-06-17 08:24:31');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Sibbe', 'Laraine', 'Maéna', 'MASS', 4522, 325837, 17, 49, 'PENDING', '2023-07-15 00:16:06');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Lobell', 'Gabriella', 'Sòng', 'DRAW', 4030, 876268, 17, 44, 'PENDING', '2023-11-14 04:48:11');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ghent', 'Yvette', 'Åslög', 'DRAW', 4990, 930814, 15, 24, 'PENDING', '2023-07-18 02:13:51');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Haithwaite', 'Sophronia', 'Gösta', 'DRAW', 4853, 820620, 13, 20, 'PENDING', '2023-07-17 20:12:36');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ingleton', 'Mauricio', 'Maëline', 'MASS', 9187, 533100, 1, 20, 'PENDING', '2023-09-08 21:01:20');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Prestwich', 'Den', 'Anaé', 'MASS', 6813, 954337, 20, 40, 'PENDING', '2023-07-24 14:43:34');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Checcucci', 'Jo', 'Françoise', 'MASS', 5207, 178114, 2, 17, 'PENDING', '2023-06-10 11:04:15');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Barnewall', 'Igor', 'Ráo', 'MASS', 8872, 547610, 6, 17, 'PENDING', '2023-05-28 10:18:14');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Zannolli', 'Stanley', 'Mahélie', 'DRAW', 2054, 556037, 13, 6, 'PENDING', '2023-12-06 07:35:06');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Crolly', 'Rochelle', 'Océane', 'MASS', 3170, 609157, 11, 49, 'PENDING', '2023-10-03 13:52:56');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Gozzard', 'Hester', 'Médiamass', 'MASS', 4779, 511601, 1, 27, 'PENDING', '2023-07-19 19:40:41');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Golby', 'Carolynn', 'Maïly', 'DRAW', 3815, 432516, 7, 4, 'PENDING', '2023-08-21 16:09:08');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Birwhistle', 'Rossie', 'Anaé', 'MASS', 3238, 981317, 8, 28, 'PENDING', '2023-06-03 02:10:13');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Maasz', 'Grier', 'Adèle', 'MASS', 9574, 685103, 3, 24, 'PENDING', '2023-05-27 12:35:29');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Allchorne', 'Auguste', 'Clélia', 'MASS', 8092, 614424, 3, 50, 'PENDING', '2023-11-07 09:07:54');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Albrecht', 'Natalina', 'Audréanne', 'MASS', 7044, 365969, 16, 41, 'PENDING', '2023-08-06 03:44:52');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Warrack', 'Bartlet', 'Táng', 'MASS', 4680, 433942, 14, 31, 'PENDING', '2023-05-21 07:16:53');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Timbs', 'Benny', 'Lauréna', 'DRAW', 2161, 603532, 2, 38, 'PENDING', '2023-06-24 13:24:15');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Checklin', 'Muffin', 'Méryl', 'MASS', 3308, 611440, 4, 23, 'PENDING', '2023-08-26 13:02:09');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Highway', 'Alfie', 'Loïca', 'MASS', 1563, 351684, 6, 9, 'PENDING', '2023-09-28 05:22:02');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Teggin', 'Hinze', 'Sòng', 'MASS', 8088, 281125, 12, 25, 'PENDING', '2023-12-14 13:57:41');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Whitham', 'Genny', 'Lóng', 'MASS', 2550, 841406, 14, 49, 'PENDING', '2023-10-21 18:16:17');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Normadell', 'Friederike', 'Inès', 'MASS', 1869, 369884, 12, 17, 'PENDING', '2023-04-21 21:48:19');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ivanchikov', 'Gris', 'Mélinda', 'MASS', 9586, 797342, 14, 50, 'PENDING', '2023-08-16 21:12:26');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Robbeke', 'Gisele', 'Torbjörn', 'DRAW', 3677, 127706, 14, 32, 'PENDING', '2023-06-05 03:34:15');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Indge', 'Amerigo', 'Cunégonde', 'MASS', 5152, 720148, 14, 36, 'PENDING', '2023-05-27 00:15:39');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Hastin', 'Jeddy', 'Lài', 'MASS', 5900, 192496, 18, 26, 'PENDING', '2023-10-05 14:20:04');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Bamell', 'Kendra', 'Léa', 'MASS', 7807, 712563, 11, 4, 'PENDING', '2023-10-06 14:20:32');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Waycott', 'Jackie', 'Adélie', 'MASS', 3488, 469931, 16, 37, 'PENDING', '2023-05-19 04:37:01');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Maharry', 'Reider', 'Judicaël', 'MASS', 1431, 886863, 1, 5, 'PENDING', '2023-11-07 04:53:08');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Daelman', 'Nessie', 'Ruò', 'DRAW', 3400, 880899, 2, 8, 'PENDING', '2023-05-19 03:54:07');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Gildersleeve', 'Luther', 'Adèle', 'DRAW', 8311, 161353, 15, 8, 'PENDING', '2023-07-16 17:06:00');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Raccio', 'Hyacinthe', 'Loïca', 'MASS', 5922, 979844, 8, 30, 'PENDING', '2023-11-03 22:00:04');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Orkney', 'Spike', 'Torbjörn', 'DRAW', 8735, 476216, 2, 42, 'PENDING', '2023-06-05 03:46:23');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Kelbie', 'Zacharie', 'Maëlann', 'MASS', 8024, 866960, 7, 16, 'PENDING', '2023-07-24 21:23:59');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Citrine', 'Gorden', 'Bécassine', 'MASS', 4841, 350645, 9, 6, 'PENDING', '2023-05-13 03:30:52');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Lund', 'Jobie', 'Åslög', 'DRAW', 9630, 869855, 8, 40, 'PENDING', '2023-09-18 05:41:08');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Ekins', 'Mariette', 'Josée', 'MASS', 2999, 103394, 14, 23, 'PENDING', '2023-12-18 10:54:47');
insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, quantity, request_status, created) values ('Fardo', 'Allan', 'Irène', 'MASS', 5700, 108247, 14, 35, 'PENDING', '2023-07-21 11:08:22');