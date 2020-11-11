CREATE USER 'empresa_admin_local'@'localhost' IDENTIFIED BY 'eal123'

GRANT ALL PRIVILEGES ON EmpresaDB.* 'empresa_admin_local'@'localhost';
