INSERT INTO config (`plugin`, `key`, `value`) VALUES 
('core', 'ldap:basedn', 'ou=users,dc=yunohost,dc=org'),
('core', 'ldap:domain', 'dc=yunohost,dc=org'),
('core', 'ldap:enable', '1'),
('core', 'ldap:filter', 'objectClass=mailAccount'),
('core', 'ldap:host', 'localhost'),
('core', 'ldap:port', '389'),
('core', 'sso:allowRemoteUser', '1'),
('core', 'internalAddr', 'YNH_DOMAIN'),
('core', 'internalComplement', 'YNH_PATH'),
('core', 'internalPort', '443'),
('core', 'internalProtocol', 'https://'),
('core', 'externalAddr', 'YNH_DOMAIN'),
('core', 'externalComplement', 'YNH_PATH'),
('core', 'externalPort', '443'),
('core', 'externalProtocol', 'https://');

INSERT INTO user (id, login, password, options, hash, rights) VALUES ('0', 'YNH_ADMIN', '', NULL, NULL, '{\"admin\":1}');

DELETE FROM user WHERE login = 'admin';
