-- Inserisci l'utente admin. Assicurati di sostituire la password con la tua password codificata.
INSERT INTO users (username, password, enabled)
VALUES ('admin', '$2a$12$MppQdgK9Fy7Nzz8IDIlef.YGgNRgtaegrI1xZL56Kwc8X9M67GvzK', TRUE);

-- Assegna il ruolo di amministratore all'utente admin.
INSERT INTO authorities (username, authority)
VALUES ('admin', 'ROLE_ADMIN');