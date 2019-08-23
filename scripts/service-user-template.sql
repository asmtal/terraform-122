CREATE USER USER_NAME WITH PASSWORD 'USER_PASSWORD';

GRANT CONNECT, TEMPORARY, TEMP  ON DATABASE DATABASE_NAME TO USER_NAME;

GRANT USAGE ON SCHEMA public TO USER_NAME;

GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER ON ALL TABLES IN SCHEMA public TO USER_NAME;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO USER_NAME;

GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO USER_NAME;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO USER_NAME;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON SEQUENCES TO USER_NAME;

CREATE TABLE devops_test ( ID serial PRIMARY KEY, url VARCHAR (255) NOT NULL, name VARCHAR (255) NOT NULL, description VARCHAR (255), rel VARCHAR (50));
