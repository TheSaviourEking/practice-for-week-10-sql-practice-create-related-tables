DROP TABLE IF EXISTS musicians_instruments;

-- Step 1: One-to-Many
INSERT INTO
  bands (name)
VALUES
  ('hotband');

INSERT INTO
  musicians (first_name, last_name)
VALUES
  ('maverick', 'kelvin');

-- Step 2: Many-to-Many
CREATE TABLE
  musicians_instruments (
    musician_id INTEGER NOT NULL,
    instruments_id INTEGER NOT NULL,
    FOREIGN KEY (musician_id) REFERENCES musicians (id),
    FOREIGN KEY (instruments_id) REFERENCES instruments (id)
  );
