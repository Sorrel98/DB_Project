SET ServerOutput On;
create or replace procedure delete_c_enroll(
	v_c_id IN VARCHAR2)
is
begin
	update course
	set c_enroll = c_enroll - 1
	where c_id = v_c_id;
	
	DBMS_OUTPUT.put_line(SQL%ROWCOUNT);
end;
/