create or replace view v_user_privileges as
 select uuid() 'row_id',
        u.user_id,
        p.privilege_id,
        concat_ws(' ', u.first_name, u.last_name) 'user_name',
        p.code 'privilege_name'
	from users u,
         user_roles ur,
         role_privileges rp,
         privileges p
	where u.user_id = ur.user_id
      and ur.role_id = rp.role_id
      and rp.privilege_id = p.privilege_id;
        