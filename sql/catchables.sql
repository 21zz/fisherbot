DROP TABLE IF EXISTS Catchable;
CREATE TABLE IF NOT EXISTS Catchable (
    catchable_id NUMBER PRIMARY_KEY UNIQUE,
    catchable_name TEXT NOT NULL,
    area_id NUMBER NOT NULL,
    xp_on_catch NUMBER NOT NULL,
    rarity TEXT NOT NULL,
    attribute TEXT NOT NULL);
INSERT INTO Catchable
VALUES
    (36, "Pogfish", 4, 12500, "Unique", "fish"),
    (35, "Dottyback", 4, 2500, "Legendary", "fish"),
    (34, "Queen Angelfish", 4, 350, "Rare", "fish"),
    (33, "Parrotfish", 4, 275, "Uncommon", "fish"),
    (32, "Cotton Candy Betta", 4, 150, "Common", "fish"),
    (31, "Tropical Fish Preview (w)", 3, 2000, "Legendary", "fish"),
    (30, "Tropical Fish Preview (gr)", 3, 2000, "Legendary", "fish"),
    (29, "Clownfish", 3, 300, "Rare", "fish"),
    (28, "Yellowtail Parrot", 3, 250, "Uncommon", "fish"),
    (27, "Goatfish", 3, 250, "Uncommon", "fish"),
    (26, "Yellow Tang", 3, 250, "Uncommon", "fish"),
    (25, "Threadfin", 3, 110, "Common", "fish"),
    (24, "Moorish Idol", 3, 100, "Common", "fish"),
    (23, "White-Gray Dasher", 3, 100, "Common", "fish"),
    (22, "White-Silver SunStreak", 3, 100, "Common", "fish"),
    (21, "Anemone", 2, 165, "Rare", "fish"),
    (20, "Ornate Butterfly", 2, 95, "Uncommon", "fish"),
    (19, "Tomato Clownfish", 2, 95, "Uncommon", "fish"),
    (18, "Tomato Clown", 2, 50, "Common", "fish"),
    (17, "Emperor Red Snapper", 2, 75, "Common", "fish"),
    (16, "Red Snapper", 2, 50, "Common", "fish"),
    (15, "Red Cichlid", 2, 50, "Common", "fish"),
    (14, "Red-Lipped Blenny", 1, 90, "Uncommon", "fish"),
    (13, "Black Tang", 1, 80, "Uncommon", "fish"),
    (12, "Blue Tang", 1, 80, "Uncommon", "fish"),
    (11, "Triggerfish", 1, 20, "Common", "fish"),
    (10, "Butterflyfish", 1, 20, "Common", "fish"),
    (9, "Blue Dory", 1, 20, "Common", "fish"),
    (8, "Cichlid", 1, 20, "Common", "fish"),
    (7, "Stick", -1, 1, "Junk", "junk"),
    (6, "Seaweed", -1, 1, "Junk", "junk"),
    (5, "Carrot", -1, 1, "Junk", "junk"),
    (4, "Broken Glass", -1, 1, "Junk", "junk"),
    (3, "Boots", -1, 1, "Junk", "junk"),
    (2, "Pufferfish", 0, 10, "Common", "fish"),
    (1, "Salmon", 0, 7, "Common", "fish"),
    (0, "Cod", 0, 5, "Common", "fish");