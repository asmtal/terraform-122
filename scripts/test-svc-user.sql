SELECT * FROM devops_test;

INSERT INTO devops_test (url, name) VALUES ('http://www.postgresqltutorial.com','PostgreSQL Tutorial');

SELECT * FROM devops_test;

UPDATE devops_test SET url = 'http://www.postgresqltutorial2.com', name = 'PostgreSQL Tutorial2';

DELETE from devops_test where url = 'http://www.postgresqltutorial2.com';

SELECT * FROM devops_test;
