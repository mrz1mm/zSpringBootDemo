-- Inserisci l'utente admin. Assicurati di sostituire la password con la tua password codificata.
INSERT INTO users (username, password, enabled)
VALUES ('admin', '{bcrypt}$2a$10$your_encoded_password_here', TRUE);

-- Assegna il ruolo di amministratore all'utente admin.
INSERT INTO authorities (username, authority)
VALUES ('admin', 'ROLE_ADMIN');