INSERT INTO ACTOR(NAME, SURNAME, BIRTH, POPULARITY, GENDER, NATIONALITY) VALUES (
	'Adam', -- Name
	'Driver', -- Surname
	'1983-11-19', -- Birth
	90, -- Popularity
	FALSE,
	'US'
), (
	'Adam', -- Name
	'Sandler', -- Surname
	'1966-09-09', -- Birth
	84, -- Popularity
	FALSE,
	'US'
), (
	'Joaquin', -- Name
	'Phoenix', -- Surname
	'1974-10-28', -- Birth
	92, -- Popularity
	FALSE,
	'PR'
), (
	'Robert', -- Name
	'Downey Jr', -- Surname
	'1965-04-04', -- Birth
	94, -- Popularity
	FALSE,
	'US'
), (
	'Scarlett', -- Name
	'Johansson', -- Surname
	'1984-11-22', -- Birth
	90, -- Popularity
	TRUE,
	'US'
), (
	'Robert', -- Name
	'De Niro', -- Surname
	'1943-08-17', -- Birth
	85, -- Popularity
	FALSE,
	'US'
), (
	'Emilia', -- Name
	'Clarke', -- Surname
	'1986-10-23', -- Birth
	81, -- Popularity
	TRUE,
	'GB'
), (
	'Rami', -- Name
	'Malek', -- Surname
	'1981-05-12', -- Birth
	80, -- Popularity
	FALSE,
	'US'
), (
	'Saoirse', -- Name
	'Ronan', -- Surname
	'1994-04-12', -- Birth
	77, -- Popularity
	TRUE,
	'US'
), (
	'Ana', -- Name
	'De Armas', -- Surname
	'1988-04-30', -- Birth
	80, -- Popularity
	TRUE,
	'CU'
), (
	'Matthew', -- Name
	'McConaughey', -- Surname
	'1969-11-04', -- Birth
	79, -- Popularity
	FALSE,
	'US'
), (
	'Jake', -- Name
	'Gyllenhaal', -- Surname
	'1980-12-19', -- Birth
	81, -- Popularity
	FALSE,
	'US'
), (
	'John David', -- Name
	'Washington', -- Surname
	'1984-07-28', -- Birth
	70, -- Popularity
	FALSE,
	'US'
), (
	'Al', -- Name
	'Pacino', -- Surname
	'1940-04-25', -- Birth
	83, -- Popularity
	FALSE,
	'US'
), (
	'Leonardo', -- Name
	'DiCaprio', -- Surname
	'1974-11-11', -- Birth
	87, -- Popularity
	FALSE,
	'US'
), (
	'Brad', -- Name
	'Pitt', -- Surname
	'1963-12-18', -- Birth
	87, -- Popularity
	FALSE,
	'US'
), (
	'Margot', -- Name
	'Robbie', -- Surname
	'1990-07-02', -- Birth
	89, -- Popularity
	TRUE,
	'AU'
), (
	'Christoph', -- Name
	'Waltz', -- Surname
	'1956-10-04', -- Birth
	72, -- Popularity
	FALSE,
	'AT'
), (
	'Michael', -- Name
	'Fassbender', -- Surname
	'1977-04-02', -- Birth
	70, -- Popularity
	FALSE,
	'DE'
), (
	'Daniel', -- Name
	'Day-Lewis', -- Surname
	'1957-04-29', -- Birth
	80, -- Popularity
	FALSE,
	'GB'
);

INSERT INTO DIRECTOR(NAME, SURNAME, BIRTH, POPULARITY, GENDER, NATIONALITY) VALUES (
	'Martin', -- Name
	'Scorsese', -- Surname
	'1942-11-17', -- Birth
	88, -- Popularity
	FALSE,
	'US'
), (
	'Sofia', -- Name
	'Coppola', -- Surname
	'1971-05-14', -- Birth
	65, -- Popularity
	TRUE,
	'US'
), (
	'Christopher', -- Name
	'Nolan', -- Surname
	'1970-07-30', -- Birth
	89, -- Popularity
	FALSE,
	'UK'
), (
	'Alejandro', -- Name
	'González Iñárritu', -- Surname
	'1963-08-15', -- Birth
	78, -- Popularity
	FALSE,
	'MX'
), (
	'Quentin', -- Name
	'Tarantino', -- Surname
	'1963-03-27', -- Birth
	88, -- Popularity
	FALSE,
	'US'
), (
	'Guillermo', -- Name
	'Del Toro', -- Surname
	'1964-10-09', -- Birth
	80, -- Popularity
	FALSE,
	'MX'
), (
	'Paul Thomas', -- Name
	'Anderson', -- Surname
	'1970-06-26', -- Birth
	76, -- Popularity
	FALSE,
	'US'
), (
	'Ridley', -- Name
	'Scott', -- Surname
	'1937-11-30', -- Birth
	78, -- Popularity
	FALSE,
	'GB'
), (
	'Steven', -- Name
	'Spielberg', -- Surname
	'1946-12-18', -- Birth
	81, -- Popularity
	FALSE,
	'US'
), (
	'Francis', -- Name
	'Ford Coppola', -- Surname
	'1939-04-07', -- Birth
	80, -- Popularity
	FALSE,
	'US'
), (
	'Wes', -- Name
	'Anderson', -- Surname
	'1969-05-01', -- Birth
	76, -- Popularity
	FALSE,
	'US'
), (
	'Todd', -- Name
	'Phillips', -- Surname
	'1970-12-20', -- Birth
	82, -- Popularity
	FALSE,
	'US'
), (
	'Cary Joji', -- Name
	'Fukunaga', -- Surname
	'1977-07-10', -- Birth
	64, -- Popularity
	FALSE,
	'US'
), (
	'Noah', -- Name
	'Baumbach', -- Surname
	'1969-09-03', -- Birth
	69, -- Popularity
	FALSE,
	'US'
), (
	'Benny', -- Name
	'Safdie', -- Surname
	'1986-02-24', -- Birth
	60, -- Popularity
	FALSE,
	'US'
);

INSERT INTO MOVIE(TITLE, DESCRIPTION, PREMIERED_AT, CRITIC_RATE, FK_DIRECTOR, NATIONALITY) VALUES (
	'There Will Be Blood', -- Title
	'Ruthless silver miner, turned oil prospector, Daniel Plainview moves to oil-rich California. Using his adopted son HW to project a trustworthy, family-man image, Plainview cons local landowners into selling him their valuable properties for a pittance. However, local preacher Eli Sunday suspects Plainviews motives and intentions, starting a slow-burning feud that threatens both their lives.', -- Description
	'2007-12-26', -- Premiered At
	9.1, -- Critic Rate
	7, -- Director ID
	'US' -- Nationality
), (
	'The Godfather', -- Title
	'Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo''s novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). When the don''s youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the family business.', -- Description
	'1972-03-24', -- Premiered At
	9.9, -- Critic Rate
	10, -- Director ID
	'US' -- Nationality
), (
	'Birdman', -- Title
	'Former cinema superhero Riggan Thomson (Michael Keaton) is mounting an ambitious Broadway production that he hopes will breathe new life into his stagnant career. It''s risky, but he hopes that his creative gamble will prove that he''s a real artist and not just a washed-up movie star. As opening night approaches, a castmate is injured, forcing Riggan to hire an actor (Edward Norton) who is guaranteed to shake things up. Meanwhile, Riggan must deal with his girlfriend, daughter and ex-wife.', -- Description
	'2014-10-17', -- Premiered At
	9.1, -- Critic Rate
	4, -- Director ID
	'US' -- Nationality
), (
	'Tenet', -- Title
	'Tenet is an upcoming action thriller film written and directed by Christopher Nolan. It stars John David Washington, Robert Pattinson, Elizabeth Debicki, Dimple Kapadia, Michael Caine, and Kenneth Branagh. Tenet is scheduled to be released by Warner Bros. Pictures on July 17, 2020 in IMAX, 35 mm, and 70 mm film.', -- Description
	'2020-07-17', -- Premiered At
	0.0, -- Critic Rate
	3, -- Director ID
	'US' -- Nationality
), (
	'Interstellar', -- Title
	'In Earth''s future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth''s population to a new home via a wormhole. But first, Brand must send former NASA pilot Cooper (Matthew McConaughey) and a team of researchers through the wormhole and across the galaxy to find out which of three planets could be mankind''s new home.', -- Description
	'2014-10-26', -- Premiered At
	8.6, -- Critic Rate
	3, -- Director ID
	'US' -- Nationality
), (
	'The Wolf of Wallstreet', -- Title
	'In 1987, Jordan Belfort (Leonardo DiCaprio) takes an entry-level job at a Wall Street brokerage firm. By the early 1990s, while still in his 20s, Belfort founds his own firm, Stratton Oakmont. Together with his trusted lieutenant (Jonah Hill) and a merry band of brokers, Belfort makes a huge fortune by defrauding wealthy investors out of millions. However, while Belfort and his cronies partake in a hedonistic brew of sex, drugs and thrills, the SEC and the FBI close in on his empire of excess.', -- Description
	'2013-12-25', -- Premiered At
	8.2, -- Critic Rate
	1, -- Director ID
	'US' -- Nationality
), (
	'Taxi Driver', -- Title
	'Suffering from insomnia, disturbed loner Travis Bickle (Robert De Niro) takes a job as a New York City cabbie, haunting the streets nightly, growing increasingly detached from reality as he dreams of cleaning up the filthy city. When Travis meets pretty campaign worker Betsy (Cybill Shepherd), he becomes obsessed with the idea of saving the world, first plotting to assassinate a presidential candidate, then directing his attentions toward rescuing 12-year-old prostitute Iris (Jodie Foster).', -- Description
	'1976-02-08', -- Premiered At
	9.7, -- Critic Rate
	1, -- Director ID
	'US' -- Nationality
), (
	'Joker', -- Title
	'Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks - the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he''s part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.', -- Description
	'2019-10-04', -- Premiered At
	8.6, -- Critic Rate
	12, -- Director ID
	'US' -- Nationality
), (
	'The Master', -- Title
	'Freddie Quell (Joaquin Phoenix) is a troubled, boozy drifter struggling with the trauma of World War II and whatever inner demons ruled his life before that. On a fateful night in 1950, Freddie boards a passing boat and meets Lancaster Dodd (Philip Seymour Hoffman), the charismatic leader of a religious movement called the Cause. Freddie tries hard to adhere to Dodd''s weird teachings and forms a close bond with his mentor, even as other members of Dodd''s inner circle see him as a threat.', -- Description
	'2012-09-14', -- Premiered At
	8.5, -- Critic Rate
	7, -- Director ID
	'US' -- Nationality
), (
	'Once Upon A Time In Hollywood', -- Title
	'Actor Rick Dalton gained fame and fortune by starring in a 1950s television Western, but is now struggling to find meaningful work in a Hollywood that he doesn''t recognize anymore. He spends most of his time drinking and palling around with Cliff Booth, his easygoing best friend and longtime stunt double. Rick also happens to live next door to Roman Polanski and Sharon Tate - the filmmaker and budding actress whose futures will forever be altered by members of the Manson Family.', -- Description
	'2019-07-26', -- Premiered At
	8.5, -- Critic Rate
	5, -- Director ID
	'US' -- Nationality
), (
	'007: No Time To Die', -- Title
	'Recruited to rescue a kidnapped scientist, globe-trotting spy James Bond finds himself hot on the trail of a mysterious villain, who''s armed with a dangerous new technology.', -- Description
	'2020-04-20', -- Premiered At
	0, -- Critic Rate
	13, -- Director ID
	'GB' -- Nationality
), (
	'The Irishman', -- Title
	'In the 1950s, truck driver Frank Sheeran gets involved with Russell Bufalino and his Pennsylvania crime family. As Sheeran climbs the ranks to become a top hit man, he also goes to work for Jimmy Hoffa -- a powerful Teamster tied to organized crime.', -- Description
	'2019-11-19', -- Premiered At
	9.6, -- Critic Rate
	1, -- Director ID
	'US' -- Nationality
), (
	'The Grand Budapest Hotel', -- Title
	'In the 1930s, the Grand Budapest Hotel is a popular European ski resort, presided over by concierge Gustave H. (Ralph Fiennes). Zero, a junior lobby boy, becomes Gustave''s friend and protege. Gustave prides himself on providing first-class service to the hotel''s guests, including satisfying the sexual needs of the many elderly women who stay there. When one of Gustave''s lovers dies mysteriously, Gustave finds himself the recipient of a priceless painting and the chief suspect in her murder.', -- Description
	'2014-03-28', -- Premiered At
	9.1, -- Critic Rate
	11, -- Director ID
	'US' -- Nationality
), (
	'Marriage Story', -- Title
	'A stage director and his actor wife struggle through a gruelling, coast-to-coast divorce that pushes them to their personal and creative extremes.', -- Description
	'2019-08-29', -- Premiered At
	9.5, -- Critic Rate
	14, -- Director ID
	'US' -- Nationality
), (
	'Uncut Gems', -- Title
	'A charismatic jeweller makes a high-stakes bet that could lead to the windfall of a lifetime. In a precarious high-wire act, he must balance business, family and adversaries on all sides in pursuit of the ultimate win.', -- Description
	'2019-12-25', -- Premiered At
	9.2, -- Critic Rate
	15, -- Director ID
	'US' -- Nationality
);

CREATE VIEW MOVIE_DIRECTOR AS
SELECT M.TITLE AS MOVIE, M.DESCRIPTION AS DESCRIPTION, M.PREMIERED_AT AS RELEASED, CONCAT(D.NAME, ' ', D.SURNAME) AS DIRECTOR 
FROM MOVIE AS M, DIRECTOR AS D WHERE M.FK_DIRECTOR = D.ID;


SELECT * FROM ACTOR;
SELECT * FROM MOVIE_DIRECTOR;

INSERT INTO MOVIE_ACTORS VALUES 
-- Movie, Actor
(1, 20),
(2, 14),
(4, 13),
(5, 11),
(6, 15),
(6, 17),
(7, 6),
(8, 3),
(9, 3),
(10, 15),
(10, 16),
(10, 17),
(11, 10),
(11, 8),
(12, 6),
(12, 14),
(13, 9),
(14, 1),
(14, 5),
(15, 2),
(8, 6);

CREATE VIEW MOVIE_ACTOR AS 
SELECT M.TITLE AS MOVIE, CONCAT(A.NAME, ' ', A.SURNAME) AS ACTOR
FROM MOVIE AS M, ACTOR AS A, MOVIE_ACTORS AS MA
WHERE MA.FK_MOVIE = M.ID AND MA.FK_ACTOR = A.ID;

SELECT * FROM MOVIE_ACTOR;

