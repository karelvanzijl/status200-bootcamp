-- =========================
-- 1) PARENT TABLES
-- =========================

INSERT INTO directors (name, birth_year, nationality) VALUES
('Ava Thornton', 1971, 'USA'),
('Kenji Mori', 1965, 'Japan'),
('Lucia Moretti', 1979, 'Italy'),
('David Okoye', 1980, 'Nigeria'),
('Sofia Marin', 1986, 'Spain'),
('Jonah Clarke', 1975, 'UK'),
('Maya Rahman', 1982, 'Bangladesh'),
('Owen Fitzgerald', 1969, 'Ireland'),
('Nadia Petrova', 1977, 'Bulgaria'),
('Hugo Schneider', 1973, 'Germany');

INSERT INTO actors (name, birth_year, nationality) VALUES
('Liam Brooks', 1983, 'USA'),
('Eva Torres', 1987, 'Mexico'),
('Noah Kim', 1990, 'South Korea'),
('Amara Singh', 1985, 'India'),
('Jonas Weber', 1981, 'Germany'),
('Sasha Petrov', 1989, 'Russia'),
('Zara Ali', 1992, 'Pakistan'),
('Mateo Garcia', 1984, 'Argentina'),
('Chloe Martin', 1991, 'France'),
('Omar Haddad', 1980, 'Morocco'),
('Harper Lee', 1988, 'USA'),
('Yara Nasser', 1993, 'Egypt'),
('Felix Tan', 1986, 'Singapore'),
('Mina Kaito', 1994, 'Japan'),
('Daniela Costa', 1982, 'Brazil');

INSERT INTO genres (name) VALUES
('Action'),
('Comedy'),
('Drama'),
('Horror'),
('Sci-Fi');

INSERT INTO users (email, password, first_name, last_name, date_joined) VALUES
('alice@example.com',  '$2y$10$abcAlice',   'Alice',   'Ng',        '2025-06-01'),
('bob@example.com',    '$2y$10$abcBob',     'Bob',     'Kumar',     '2025-06-03'),
('carol@example.com',  '$2y$10$abcCarol',   'Carol',   'Lopez',     '2025-06-05'),
('dave@example.com',   '$2y$10$abcDave',    'Dave',    'Tan',       '2025-06-07'),
('erin@example.com',   '$2y$10$abcErin',    'Erin',    'Rahman',    '2025-06-10'),
('faisal@example.com', '$2y$10$abcFaisal',  'Faisal',  'Hassan',    '2025-06-12'),
('gina@example.com',   '$2y$10$abcGina',    'Gina',    'Martins',   '2025-06-15'),
('hank@example.com',   '$2y$10$abcHank',    'Hank',    'Wong',      '2025-06-18'),
('ivy@example.com',    '$2y$10$abcIvy',     'Ivy',     'de Vries',  '2025-06-20'),
('jack@example.com',   '$2y$10$abcJack',    'Jack',    'Olsen',     '2025-06-22');

-- =========================
-- 2) CHILD TABLES
-- =========================
-- 20 movies (director_id 1..10 reused), with minimal but valid fields

INSERT INTO movies (director_id, title, release_year, description, duration_minutes, poster_url, trailer_url) VALUES
(1, 'Steel Horizon',                 2021, 'A retired captain returns to the seas to stop a pirate ring.', 118, 'https://example.com/posters/steel-horizon.jpg',           'https://youtu.be/steelhorizon'),
(2, 'Neon Alley',                    2020, 'A rookie detective hunts a hacker through luminous backstreets.', 104, 'https://example.com/posters/neon-alley.jpg',            'https://youtu.be/neonalley'),
(3, 'Autumn Letters',                2022, 'Two strangers exchange letters that change their lives.',        112, 'https://example.com/posters/autumn-letters.jpg',        'https://youtu.be/autumnletters'),
(4, 'Savannah Skies',                2019, 'A pilot confronts his past during a relief mission.',            109, 'https://example.com/posters/savannah-skies.jpg',        'https://youtu.be/savannahskies'),
(5, 'Laughing Stock',                2023, 'An improv troupe fakes it till they make it.',                   101, 'https://example.com/posters/laughing-stock.jpg',        'https://youtu.be/laughingstock'),
(6, 'Shadow Circuit',                2024, 'Elite thieves plan one final data heist.',                       116, 'https://example.com/posters/shadow-circuit.jpg',        'https://youtu.be/shadowcircuit'),
(7, 'Echoes of Dawn',                2018, 'A family drama unfolds across three decades.',                   127, 'https://example.com/posters/echoes-of-dawn.jpg',        'https://youtu.be/echoesofdawn'),
(8, 'Nightfall Asylum',              2022, 'Urban explorers uncover a terrifying secret.',                   98,  'https://example.com/posters/nightfall-asylum.jpg',      'https://youtu.be/nightfallasylum'),
(9, 'Orbit Unknown',                 2025, 'A stranded crew debates a risky slingshot home.',                124, 'https://example.com/posters/orbit-unknown.jpg',         'https://youtu.be/orbitunknown'),
(10,'Paper Bridges',                 2020, 'Siblings reconnect after a long-standing feud.',                 110, 'https://example.com/posters/paper-bridges.jpg',         'https://youtu.be/paperbridges'),
(1, 'Crimson Tideway',               2023, 'Undercover agent infiltrates a smuggling cartel.',               113, 'https://example.com/posters/crimson-tideway.jpg',       'https://youtu.be/crimsontideway'),
(2, 'Pixel Hearts',                  2019, 'Indie devs race to finish a game—and find love.',               102, 'https://example.com/posters/pixel-hearts.jpg',          'https://youtu.be/pixelhearts'),
(3, 'Granite Road',                  2021, 'A courtroom battle tests a small-town lawyer.',                  121, 'https://example.com/posters/granite-road.jpg',          'https://youtu.be/graniteroad'),
(4, 'Dust & Thunder',                2024, 'Rangers defend a wildlife reserve from poachers.',               115, 'https://example.com/posters/dust-and-thunder.jpg',      'https://youtu.be/dustandthunder'),
(5, 'Café Comet',                    2020, 'A failing café becomes a viral sensation overnight.',            95,  'https://example.com/posters/cafe-comet.jpg',             'https://youtu.be/cafecomet'),
(6, 'Quantum Drift',                 2025, 'Scientists bend time to avert a catastrophe.',                   129, 'https://example.com/posters/quantum-drift.jpg',         'https://youtu.be/quantumdrift'),
(7, 'Blue Harbor',                   2018, 'A fisherman and a tourist confront loss and hope.',              106, 'https://example.com/posters/blue-harbor.jpg',           'https://youtu.be/blueharbor'),
(8, 'Whispering Walls',              2023, 'A haunted house restoration goes wrong fast.',                   100, 'https://example.com/posters/whispering-walls.jpg',      'https://youtu.be/whisperingwalls'),
(9, 'Signal to Orion',               2021, 'SETI picks up a message—decoding it may cost everything.',       122, 'https://example.com/posters/signal-to-orion.jpg',       'https://youtu.be/signaltoorion'),
(10,'Northbound',                    2019, 'A road trip mends (and tests) a fractured friendship.',          108, 'https://example.com/posters/northbound.jpg',            'https://youtu.be/northbound');

-- =========================
-- 3) REVIEWS (30 rows)
--    user_id 1..10, movie_id 1..20, dates are valid DATEs
-- =========================

INSERT INTO reviews (movie_id, user_id, review_date, rating, comment) VALUES
(1,  1, '2025-07-01', 8,  'Tight pacing and great set pieces.'),
(2,  2, '2025-07-02', 7,  'Moody and stylish.'),
(3,  3, '2025-07-03', 9,  'Heartfelt drama with superb acting.'),
(4,  4, '2025-07-03', 8,  'A moving character study.'),
(5,  5, '2025-07-04', 6,  'Light and fun.'),
(6,  6, '2025-07-05', 8,  'Slick heist vibes.'),
(7,  7, '2025-07-06', 9,  'Ambitious and satisfying.'),
(8,  8, '2025-07-06', 7,  'Creepy atmosphere.'),
(9,  9, '2025-07-07', 8,  'Smart sci-fi tension.'),
(10, 10,'2025-07-07', 7,  'Solid family drama.'),
(11, 1, '2025-07-08', 8,  'Gripping undercover tale.'),
(12, 2, '2025-07-08', 7,  'Charming rom-com energy.'),
(13, 3, '2025-07-09', 8,  'Compelling courtroom scenes.'),
(14, 4, '2025-07-09', 9,  'Stakes felt real.'),
(15, 5, '2025-07-10', 6,  'Cute concept, a bit thin.'),
(16, 6, '2025-07-10',10,  'Mind-bending and bold.'),
(17, 7, '2025-07-11', 8,  'Quiet but powerful.'),
(18, 8, '2025-07-11', 7,  'Good scares.'),
(19, 9, '2025-07-12', 9,  'Hard sci-fi done right.'),
(20,10, '2025-07-12', 7,  'Warm and sincere.'),
(1,  2, '2025-07-13', 9,  'Rewatchable action.'),
(2,  3, '2025-07-13', 6,  'Style over substance.'),
(3,  4, '2025-07-14', 8,  'Earned its tears.'),
(4,  5, '2025-07-14', 7,  'Strong performances.'),
(5,  6, '2025-07-15', 7,  'Some big laughs.'),
(6,  7, '2025-07-15', 8,  'Great final act.'),
(7,  8, '2025-07-16', 9,  'Beautifully crafted.'),
(8,  9, '2025-07-16', 6,  'Predictable but fun.'),
(9, 10, '2025-07-17', 8,  'Tense all the way through.'),
(10, 1, '2025-07-17', 7,  'Earnest and grounded.');

-- =========================
-- (Optional) JUNCTION TABLES
-- Not required by your counts, but here’s a light seed so movies have actors/genres.
-- Each movie gets 1 genre and 2 actors to keep it compact.
-- =========================

INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1, 1),(2, 1),(3, 3),(4, 3),(5, 2),
(6, 1),(7, 3),(8, 4),(9, 5),(10,3),
(11,1),(12,2),(13,3),(14,1),(15,2),
(16,5),(17,3),(18,4),(19,5),(20,3);

INSERT INTO movie_actors (movie_id, actor_id, character_name) VALUES
(1,  1, 'Captain Reed'),   (1,  2, 'Eva Delgado'),
(2,  3, 'Jin Park'),       (2,  11,'Sgt. Hale'),
(3,  9, 'Clara B.'),       (3,  7, 'Leena'),
(4,  8, 'Malik'),          (4,  10,'Youssef'),
(5,  2, 'Roxy'),           (5,  11,'Kay'),
(6,  5, 'Viktor'),         (6,  6, 'Mikhail'),
(7,  7, 'Aisha'),          (7,  1, 'Liam'),
(8,  12,'Hana'),           (8,  9, 'Camille'),
(9,  13,'Dr. Felix Tan'),  (9,  14,'Kaito'),
(10, 4, 'Amara'),          (10, 15,'Dani'),
(11, 1, 'Reed'),           (11, 3, 'Jin'),
(12, 2, 'Eva'),            (12, 9, 'Chloe'),
(13, 5, 'Jonas'),          (13, 7, 'Zara'),
(14, 8, 'Mateo'),          (14, 10,'Omar'),
(15, 11,'Harper'),         (15, 2, 'Eva'),
(16, 13,'Dr. Tan'),        (16, 14,'Mina'),
(17, 1, 'Liam'),           (17, 7, 'Zara'),
(18, 12,'Yara'),           (18, 6, 'Sasha'),
(19, 3, 'Noah'),           (19, 5, 'Jonas'),
(20, 4, 'Amara'),          (20, 9, 'Chloe');
