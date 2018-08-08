DELIMITER $$
CREATE TRIGGER tlog_pax_arrival_extra_bfr 
    BEFORE UPDATE ON tb_pax_arrival_extra
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_pax_arrival_extra
    set id_pax = OLD.id_pax,
		no_ktpx = OLD.no_ktpx,
		creator_pax_arrx = OLD.creator_pax_arrx,
    booking_codex=old.booking_codex,
    booking_codexn=new.booking_codex,
    arr_routex=old.arr_routex,
    arr_routexn=new.arr_routex,
    dep_routex=old.dep_routex,
    dep_routexn=new.dep_routex,
    day_datex=old.day_datex,
    day_datexn=new.day_datex,
    flight_nox=old.flight_nox,
    flight_noxn=new.flight_nox,
    dep_timex=old.dep_timex,
    dep_timexn=new.dep_timex,
    arr_timex=old.arr_timex,
    arr_timexn=new.arr_timex,
    flight_classx=old.flight_classx,
    flight_classxn=new.flight_classx,
    costx=old.costx,
    costxn=new.costx,
    status_verify_arrx=old.status_verify_arrx,
    status_verify_arrxn=new.status_verify_arrx,
    editor_pax_arrx=old.editor_pax_arrx,
    editor_pax_arrxn=new.editor_pax_arrx,
    tgl_edit_arrivalx = NOW(); 
END$$