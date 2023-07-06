-- Table: users
CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       user_id UUID DEFAULT gen_random_uuid(),
                       name VARCHAR(255) UNIQUE NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       email VARCHAR(255) UNIQUE NOT NULL,
                       role VARCHAR(255) NOT NULL CHECK (role IN ('ROLE_USER', 'ROLE_ADMIN')),
--                        is_admin BOOLEAN NOT NULL
);
-- insert user default
INSERT INTO users (name, password, email, role)
VALUES ('admin', '$2a$12$z4zBiKdEKXIg2P8pzUN4MelT1EphgMSQNE4n.4G0sP2SxqRw4I/jq', 'admin@gmail.com.com', 'ROLE_ADMIN');
