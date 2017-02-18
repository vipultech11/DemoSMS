SELECT * FROM roles;

insert into roles(name, description)
 values('User', 'User with login access');
SET @last_id_in_roles = LAST_INSERT_ID();
insert into role_privileges(role_id, privilege_id)
 values(@last_id_in_roles, 100); 
insert into roles(name, description)
 values('Event admin', 'Event administrator');
SET @last_id_in_roles = LAST_INSERT_ID();
insert into role_privileges(role_id, privilege_id)
 values(@last_id_in_roles, 200);
insert into roles(name, description)
 values('Admin', 'Site administrator'); 
SET @last_id_in_roles = LAST_INSERT_ID();
insert into role_privileges(role_id, privilege_id)
 values(@last_id_in_roles, 200);
insert into role_privileges(role_id, privilege_id)
 values(@last_id_in_roles, 300); 