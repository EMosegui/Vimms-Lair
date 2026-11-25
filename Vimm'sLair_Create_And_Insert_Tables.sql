
CREATE TABLE EmuLair (
emu_name VARCHAR(100) NOT NULL,
console_name VARCHAR(50) NOT NULL,
emu_version VARCHAR(20) NOT NULL,
release_date VARCHAR(50) NOT NULL,
download VARCHAR(50) NOT NULL,

PRIMARY KEY(emu_name)
);

CREATE TABLE Vault (
console_name1 VARCHAR(50) NOT NULL,
manufacuturer VARCHAR(50) NOT NULL,
release_year INT NOT NULL,

PRIMARY KEY(console_name1)
);

CREATE TABLE FAQ (
message_board VARCHAR(50) NOT NULL,
request_board VARCHAR(50) NOT NULL,
misc_board VARCHAR(50) NOT NULL,
project_board VARCHAR(50) NOT NULL,

PRIMARY KEY(message_board)
);

CREATE TABLE Site_News (
publish_year INT NOT NULL,
publish_date VARCHAR(20) NOT NULL

PRIMARY KEY(publish_year)
);

CREATE TABLE Video_Game_Manuals (
manual_number INT NOT NULL,
contributor VARCHAR(100) NOT NULL,
console_name1 VARCHAR(50) NOT NULL,

PRIMARY KEY(manual_number),

FOREIGN KEY(console_name1)
    REFERENCES Vault(console_name1)
);

INSERT INTO Emulair
    (emu_name, console_name, emu_version, release_date, download)
VALUES
('SNES9x', 'Super Nintendo', '1.63', 'July 15th, 2024', 'Windows, Mac'),
('PCSX2', 'PlayStation 2', '2.8.2', 'September 4th, 2026', 'Windows, Mac'),
('Dolphin', 'Nintendo Gamecube', '2606', 'June 25th, 2026', 'Windows, Mac, Android'),
('CEMU', 'Nintendo Wii U', '2.6', 'February 6th, 2025', 'Windows, Mac'),
('Xenia', 'Xbox 360', '1.0.2844', 'February 18th, 2026', 'Windows, Mac');

INSERT INTO Vault
    (console_name1, manufacuturer, release_year)
VALUES
('Super Nintendo', 'Nintendo', '1990'),
('PlayStation 2', 'Sony', '2000'),
('Nintendo Gamecube', 'Nintendo', '2001'),
('Nintendo Wii U', 'Nintendo', '2012'),
('Xbox 360', 'Microsoft', '2005');

INSERT INTO FAQ
    (message_board, request_board, misc_board, project_board)
VALUES
('Games I Like', 'I Want Yakuza 5', 'My cat is in A Tree', 'New SNES Manual'),
('Games I Do Not Like', 'I Want Dragon Quest 8', 'My AC Unit Sucks', 'New PS2 Manual'),
('Vimms Lair Update', 'I Want Punch-Out', 'Lawnmower Will Not Start', 'New Gamecube Manual'),
('Will Vimms ever shut down?', 'I Want Mario Galaxy', 'Panda Express is Good', 'New Wii U Manual'),
('Who is Vimm?', 'I Want Stardew Valley', 'My Cat Stole My Radiator', 'New Xbox 360 Manual');

INSERT INTO Site_News
    (publish_year, publish_date)
VALUES
('1997', 'Sep 15th'),
('1999', 'Jun 25th'),
('2003', 'Jan 1st'),
('2007', 'Oct 31st'),
('2019', 'Dec 25th');

INSERT INTO Video_Game_Manuals
    (console_name1, manual_number, contributor)
VALUES
('Super Nintendo', 971, 'JayDaMystic'),
('PlayStation 2', 2044, 'Venommc'),
('Nintendo Gamecube', 293, 'Ikronix'),
('Nintendo Wii U', 2, 'Jackdaw'),
('Xbox 360', 677, 'Ultima Weapon');