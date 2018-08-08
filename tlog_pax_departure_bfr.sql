DELIMITER $$
CREATE TRIGGER tlog_pax_departure_bfr 
    BEFORE UPDATE ON tb_pax_departure
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_pax_departure
    set id_pax = OLD.id_pax,
		creator_pax_dep = OLD.creator_pax_dep,
    booking_code=old.booking_code,
    booking_coden=new.booking_code,
    arr_route=old.arr_route,
    arr_routen=new.arr_route,
    dep_route=old.dep_route,
    dep_routen=new.dep_route,
    day_date=old.day_date,
    day_daten=new.day_date,
    flight_no=old.flight_no,
    flight_non=new.flight_no,
    dep_time=old.dep_time,
    dep_timen=new.dep_time,
    arr_time=old.arr_time,
    arr_timen=new.arr_time,
    flight_class=old.flight_class,
    flight_classn=new.flight_class,
    cost=old.cost,
    costn=new.cost,
    status_verify_dep=old.status_verify_dep,
    status_verify_depn=new.status_verify_dep,
    editor_pax_dep=old.editor_pax_dep,
    editor_pax_depn=new.editor_pax_dep,
    tgl_edit_departure = NOW(); 
END$$