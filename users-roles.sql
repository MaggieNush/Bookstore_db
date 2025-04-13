-- CREATE ROLES

CREATE ROLE 'admin_role';

CREATE ROLE 'editor_role';

CREATE ROLE 'viewer_role';

-- GRANTING PRIVILEGES

GRANT ALL PRIVILEGES ON bookstore_db.* TO 'admin_role';

GRANT SELECT, INSERT, UPDATE ON bookstore_db.* TO 'editor_role';

GRANT SELECT ON bookstore_db.* TO 'viewer_role';

-- CREATE USERS

CREATE USER 'elidy'@'localhost' IDENTIFIED BY 'Maggie1020!!';

CREATE USER 'jeff'@'localhost' IDENTIFIED BY 'Maggie1020!!';

CREATE USER 'maggie'@'localhost' IDENTIFIED BY 'Maggie1020!!';

-- ASSIGNING ROLES TO USERS

GRANT 'admin_role' TO 'elidy'@'localhost';

GRANT 'editor_role' TO 'jeff'@'localhost';

GRANT 'viewer_role' TO 'maggie'@'localhost';