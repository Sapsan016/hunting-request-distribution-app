delete from resources;
delete from requests;

ALTER TABLE resources ALTER COLUMN resource_id RESTART WITH 1;
ALTER TABLE requests ALTER COLUMN request_id RESTART WITH 1;


insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('China', 'Cat, miner''s', 69, 'OPEN', '2023-04-22', '2023-06-08', 19);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Japan', 'Grey mouse lemur,', 49, 'OPEN', '2023-11-19', '2024-05-11', 32);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Poland', 'South African hedgehog', 62, 'OPEN', '2023-04-26', '2023-12-29', 42);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Russia', 'Bear, polar', 58, 'OPEN', '2023-05-17', '2023-07-29', 35);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Mexico', 'Shrike, common boubou', 39, 'OPEN', '2023-04-13', '2022-06-30', 20);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Portugal', 'Grey mouse lemur', 110, 'OPEN', '2023-05-11', '2023-11-09', 56);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Serbia', 'Bear, polar', 59, 'OPEN', '2023-07-03', '2023-10-27', 37);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('China', 'Eagle, bald', 99, 'OPEN', '2023-04-09', '2023-07-22', 63);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Kenya', 'Puku', 54, 'OPEN', '2023-05-27', '2023-11-28', 16);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Ukraine', 'Emerald green tree boa', 32, 'OPEN', '2023-04-13', '2023-09-09', 14);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('China', 'Asian openbill', 81, 'OPEN', '2023-06-25', '2023-12-01', 63);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('United States', 'Vulture, king', 68, 'OPEN', '2023-10-09', '2023-12-03', 37);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('China', 'Lion, mountain', 64, 'OPEN', '2023-05-28', '2023-10-24', 22);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Belarus', 'Bear, polar', 39, 'OPEN', '2023-07-13', '2023-12-02', 23);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Portugal', 'Lion, mountain', 38, 'OPEN', '2023-07-13', '2023-12-25', 33);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('China', 'Lynx, african', 100, 'OPEN', '2023-05-14', '2023-07-04', 45);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Greece', 'Blue catfish', 21, 'OPEN', '2023-04-06', '2023-10-20', 12);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('United States', 'Grey mouse lemur', 23, 'OPEN', '2023-05-12', '2023-08-27', 13);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('China', 'Lion, mountain', 59, 'OPEN', '2023-04-18', '2023-09-01', 33);
insert into resources (region, resource_name, quantity, resource_status, start_date, end_date, resource_quote) values ('Sweden', 'Bear, polar', 95, 'OPEN', '2023-08-04', '2023-10-04', 44);



-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Meneer', 'Franz', 'Mile', 'MASS', 6609, 9350613, 3, 'PENDING', '2022-11-08 01:05:41');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Alti', 'Tiebold', 'Elga', 'DRAW', 4677, 903590, 6, 'PENDING', '2022-08-12 21:51:57');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Drogan', 'Brandy', 'Consalve', 'MASS', 6000, 7837792, 9, 'PENDING', '2022-05-31 23:53:22');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Tenpenny', 'Piotr', 'Kirsteni', 'MASS', 4918, 6001657, 12, 'PENDING', '2022-04-06 04:22:35');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Latter', 'Ninon', 'Norean', 'MASS', 1200, 5553209, 20, 'PENDING', '2023-03-07 12:37:51');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Neeve', 'Antonetta', 'Meredith', 'DRAW', 4051, 7937729, 8, 'PENDING', '2022-12-06 21:48:52');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Drogan', 'Brandy', 'Consalve', 'MASS', 6000, 7837792, 9, 'PENDING', '2022-05-31 23:53:22');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Axford', 'Amber', 'Alecia', 'MASS', 7663, 5458556, 13, 'PENDING', '2022-06-12 22:37:40');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Korn', 'Buck', 'Dicky', 'DRAW', 4863, 4467274, 3, 'PENDING', '2022-08-12 04:22:06');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Gwin', 'Pooh', 'Trever', 'MASS', 6179, 2170383, 13, 'PENDING', '2022-07-11 23:29:01');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Powlett', 'Everard', 'Joice', 'MASS', 8659, 8096266, 14, 'PENDING', '2022-08-17 09:17:58');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Tomek', 'Starlin', 'Kizzee', 'DRAW', 1509, 8686257, 8, 'PENDING', '2023-02-03 23:02:41');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Tenpenny', 'Piotr', 'Kirsteni', 'MASS', 4918, 6001657, 12, 'PENDING', '2022-04-06 04:22:35');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Jacobson', 'Nannie', 'Hobard', 'DRAW', 9092, 5469639, 12, 'PENDING', '2022-06-24 01:38:51');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Baglin', 'Siouxie', 'Bertine', 'MASS', 6956, 3529596, 3, 'PENDING', '2022-05-28 10:24:43');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Goney', 'Herta', 'Ephraim', 'MASS', 1755, 7833532, 18, 'PENDING', '2022-11-06 23:27:39');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Brandel', 'Jed', 'Shina', 'DRAW', 8508, 672367, 17, 'PENDING', '2022-10-19 05:23:59');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Pottery', 'Eduard', 'Ruddie', 'MASS', 5394, 632213, 13, 'PENDING', '2023-01-09 22:16:35');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Sedgman', 'Raymund', 'Lela', 'MASS', 6008, 9670725, 11, 'PENDING', '2022-08-24 16:19:31');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Garaghan', 'Alonso', 'Delmar', 'DRAW', 4952, 8079669, 9, 'PENDING', '2022-12-18 03:01:49');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Denk', 'Mechelle', 'Wally', 'DRAW', 2296, 8434989, 1, 'PENDING', '2022-09-06 20:24:25');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Gaskamp', 'Dee', 'Renaud', 'MASS', 1696, 9166854, 20, 'PENDING', '2022-06-28 18:12:04');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Petrozzi', 'Davina', 'Vida', 'MASS', 4257, 5234419, 14, 'PENDING', '2023-03-07 11:47:57');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Nern', 'Abbott', 'Laverne', 'DRAW', 4938, 3541929, 15, 'PENDING', '2022-06-07 02:48:17');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Lacer', 'Aleece', 'Giuseppe', 'MASS', 4733, 1319400, 17, 'PENDING', '2022-09-28 19:04:17');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Blacktin', 'Shandy', 'Galvin', 'MASS', 6193, 8072860, 2, 'PENDING', '2022-06-03 07:13:06');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Pendered', 'Leda', 'Addy', 'DRAW', 6937, 7796327, 16, 'PENDING', '2022-05-04 22:13:35');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Watkins', 'Bernita', 'Joel', 'MASS', 7544, 5291418, 20, 'PENDING', '2022-05-25 03:04:59');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Leeb', 'Yankee', 'Merlina', 'MASS', 2942, 5304456, 20, 'PENDING', '2022-04-29 12:13:09');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Wyrall', 'Jackquelin', 'Brock', 'MASS', 9555, 8477039, 9, 'PENDING', '2022-05-30 19:09:35');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Rubenov', 'Vin', 'Brian', 'MASS', 6757, 6143841, 7, 'PENDING', '2023-03-30 12:34:02');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Ciccetti', 'Nerty', 'Farly', 'MASS', 1215, 1494072, 16, 'PENDING', '2023-02-20 07:20:00');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Batchelder', 'Sheelagh', 'Candice', 'DRAW', 3043, 5656930, 17, 'PENDING', '2022-08-11 11:14:30');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Illes', 'Gill', 'Travers', 'MASS', 6698, 8404439, 2, 'PENDING', '2022-12-13 17:54:01');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Abrahamsohn', 'Ferd', 'Cory', 'MASS', 5632, 2397559, 2, 'PENDING', '2022-07-31 22:41:41');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Roskeilly', 'Christian', 'Immanuel', 'MASS', 2928, 1048566, 1, 'PENDING', '2022-07-12 14:35:19');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Treasure', 'Sherwood', 'Ivor', 'DRAW', 4480, 5361363, 15, 'PENDING', '2022-10-09 12:47:58');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Silley', 'Korella', 'Oralie', 'MASS', 9394, 2305490, 5, 'PENDING', '2022-06-01 10:33:13');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Wasbey', 'Margret', 'Ashton', 'DRAW', 5958, 162156, 6, 'PENDING', '2023-01-09 06:01:02');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Jacobsen', 'Allard', 'Maddy', 'MASS', 9812, 6636769, 18, 'PENDING', '2023-03-28 20:30:30');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Andriuzzi', 'Silvana', 'Giff', 'MASS', 5692, 4098233, 16, 'PENDING', '2022-05-01 09:31:00');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Robun', 'Venita', 'Cecily', 'MASS', 4825, 5586938, 11, 'PENDING', '2022-10-27 10:52:25');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Dallaghan', 'Tilly', 'Orsa', 'DRAW', 3997, 2207772, 2, 'PENDING', '2022-11-23 03:40:23');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Mustarde', 'Boigie', 'Fabian', 'MASS', 2556, 3018294, 15, 'PENDING', '2022-09-10 07:40:37');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Burgisi', 'Stu', 'Angelita', 'MASS', 2987, 4606556, 18, 'PENDING', '2023-03-15 09:23:59');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Venning', 'Any', 'Susette', 'DRAW', 7183, 6884169, 20, 'PENDING', '2022-09-05 06:59:10');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Di Bartolommeo', 'Audra', 'Karia', 'MASS', 4213, 2459922, 10, 'PENDING', '2022-05-06 06:37:26');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Scole', 'Ranice', 'Adina', 'MASS', 4443, 8166432, 5, 'PENDING', '2022-07-06 11:08:22');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Soff', 'Con', 'Davine', 'MASS', 6539, 229227, 7, 'PENDING', '2022-07-20 08:31:13');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Rooper', 'Reginauld', 'Hildagard', 'MASS', 4330, 3225729, 5, 'PENDING', '2022-07-29 05:05:40');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Jimenez', 'Beaufort', 'Jonie', 'MASS', 4276, 1022735, 9, 'PENDING', '2023-02-12 02:56:33');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Scargle', 'Filip', 'Kaitlin', 'MASS', 5430, 7936719, 19, 'PENDING', '2022-06-28 21:20:02');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Tregoning', 'Vivyan', 'Lanni', 'DRAW', 7194, 5022742, 4, 'PENDING', '2023-02-22 10:46:22');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Spataro', 'Base', 'Atlante', 'MASS', 8388, 7642958, 4, 'PENDING', '2023-03-20 04:32:20');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hadye', 'Melody', 'Byran', 'DRAW', 6780, 5779697, 1, 'PENDING', '2023-01-02 19:04:09');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hincks', 'Elana', 'Jenny', 'MASS', 7259, 9029628, 14, 'PENDING', '2022-11-05 11:40:50');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Lipgens', 'Miranda', 'Melanie', 'MASS', 9936, 1698401, 4, 'PENDING', '2022-04-24 06:19:42');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Bustin', 'Olwen', 'Pippy', 'MASS', 1163, 4031879, 15, 'PENDING', '2023-01-11 13:52:22');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Lilie', 'Vally', 'Reeba', 'DRAW', 3858, 6130425, 17, 'PENDING', '2022-12-17 03:45:33');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Sprowson', 'Lethia', 'Irv', 'MASS', 6744, 8529744, 12, 'PENDING', '2022-08-08 21:13:08');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Doy', 'Dulcea', 'Bailey', 'MASS', 3841, 9085169, 3, 'PENDING', '2023-01-03 08:14:52');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Capeling', 'Griz', 'Grant', 'DRAW', 9142, 2508731, 19, 'PENDING', '2023-01-27 01:31:26');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Gosenell', 'Wally', 'Harvey', 'MASS', 4097, 6003725, 11, 'PENDING', '2023-01-02 15:44:29');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hardstaff', 'Elysee', 'Amalia', 'MASS', 6538, 838118, 19, 'PENDING', '2022-10-16 17:08:39');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Wolfendale', 'Rita', 'Hanny', 'MASS', 5053, 4929114, 5, 'PENDING', '2022-09-24 02:20:02');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Ruck', 'Raddy', 'Kelci', 'MASS', 7237, 3245002, 19, 'PENDING', '2023-03-31 20:44:19');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Bolton', 'Milo', 'Batholomew', 'DRAW', 6193, 1252581, 13, 'PENDING', '2023-02-06 14:42:58');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Carluccio', 'Andris', 'Roberta', 'MASS', 4207, 6260763, 7, 'PENDING', '2022-07-25 15:41:55');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Bruhnsen', 'Rycca', 'Eadith', 'MASS', 9231, 7919402, 1, 'PENDING', '2022-11-28 16:42:07');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hanbury-Brown', 'Angela', 'Elly', 'MASS', 9922, 5192390, 6, 'PENDING', '2023-03-01 15:05:37');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Mapholm', 'Celisse', 'Putnem', 'MASS', 2096, 1156446, 6, 'PENDING', '2022-08-09 13:12:42');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Brazil', 'Louis', 'Hube', 'MASS', 8176, 6605947, 9, 'PENDING', '2023-04-03 05:26:55');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Grogona', 'Dyanne', 'Elwood', 'MASS', 1595, 7171332, 4, 'PENDING', '2022-12-31 21:02:31');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Edlestone', 'Layla', 'Jaquelyn', 'DRAW', 5431, 6380351, 17, 'PENDING', '2022-04-07 19:55:13');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Benck', 'Glenna', 'Angelika', 'DRAW', 6087, 2030828, 18, 'PENDING', '2023-01-26 23:48:50');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Cunney', 'Annmarie', 'Dick', 'MASS', 3066, 3187124, 9, 'PENDING', '2023-03-16 00:04:51');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Cordobes', 'Isidora', 'Hildegarde', 'MASS', 7895, 2271074, 4, 'PENDING', '2022-11-25 18:45:38');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hargrove', 'Clywd', 'Fredric', 'DRAW', 5229, 6884986, 12, 'PENDING', '2022-07-18 18:42:34');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Fraschetti', 'Kattie', 'Alexia', 'MASS', 3172, 8866317, 7, 'PENDING', '2022-12-20 00:33:37');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Weighell', 'Matthias', 'Wade', 'MASS', 7875, 1400646, 16, 'PENDING', '2022-06-29 05:18:15');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Keaveny', 'Corene', 'Todd', 'DRAW', 2227, 7457381, 2, 'PENDING', '2022-12-08 10:36:56');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Nacci', 'Lidia', 'Avery', 'DRAW', 9372, 7547666, 4, 'PENDING', '2022-10-06 13:03:15');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Matiewe', 'Phylis', 'Gale', 'MASS', 8093, 2057053, 19, 'PENDING', '2022-05-22 14:58:18');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Grimmett', 'Haze', 'Rianon', 'DRAW', 6884, 4887724, 4, 'PENDING', '2022-04-12 18:32:02');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Teggin', 'Yance', 'Jerrilee', 'MASS', 3399, 2811560, 16, 'PENDING', '2023-02-21 20:52:17');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Petters', 'Shauna', 'Carol', 'MASS', 6621, 1076845, 13, 'PENDING', '2022-09-12 16:59:52');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Lefeaver', 'Torin', 'Charmaine', 'DRAW', 5691, 244241, 15, 'PENDING', '2022-04-08 11:29:52');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Verbruggen', 'Jewel', 'Frank', 'MASS', 6301, 1844572, 5, 'PENDING', '2023-02-10 04:49:02');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Chatell', 'Elise', 'Ardis', 'MASS', 9394, 6325203, 10, 'PENDING', '2022-04-21 09:03:55');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hegge', 'Leilah', 'Erhart', 'MASS', 7064, 2619469, 18, 'PENDING', '2022-06-16 03:13:14');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Hughlock', 'Rosina', 'Ellynn', 'DRAW', 1186, 9717011, 3, 'PENDING', '2022-06-18 11:30:07');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Purbrick', 'Antony', 'Celinka', 'MASS', 2263, 5238691, 4, 'PENDING', '2022-11-16 21:52:25');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Cray', 'Thorn', 'Lionello', 'MASS', 5604, 1225411, 10, 'PENDING', '2022-12-11 16:46:37');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Winspurr', 'Gerianna', 'Norean', 'MASS', 4864, 8435838, 8, 'PENDING', '2022-10-06 10:46:12');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Featherston', 'Zabrina', 'Cacilia', 'DRAW', 1172, 3608855, 13, 'PENDING', '2022-07-04 07:49:22');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Conrath', 'Edd', 'Enos', 'MASS', 7979, 8227464, 15, 'PENDING', '2022-10-08 20:54:49');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Sherringham', 'Kristoffer', 'Dael', 'MASS', 9278, 6066722, 14, 'PENDING', '2023-01-27 17:54:23');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Cargen', 'Sayer', 'Ebonee', 'MASS', 2110, 9605679, 19, 'PENDING', '2023-02-14 05:05:03');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Perton', 'Talia', 'Claudio', 'DRAW', 5827, 3756865, 3, 'PENDING', '2023-01-15 03:05:37');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Faunt', 'Tabatha', 'Berthe', 'MASS', 8072, 2849499, 13, 'PENDING', '2023-02-17 19:18:12');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Beckett', 'Ammamaria', 'Frankie', 'MASS', 8556, 4960492, 17, 'PENDING', '2022-11-18 05:33:58');
-- insert into requests (requester_surname, requester_name, requester_middle_name, request_type, ticket_serial_number, ticket_number, resource_id, request_status, created) values ('Bescoby', 'Caleb', 'Flss', 'DRAW', 6960, 1764248, 18, 'PENDING', '2023-03-20 10:58:12');
--
--
--
--
