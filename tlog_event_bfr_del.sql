DELIMITER $$
CREATE TRIGGER tlog_event_bfr_del 
    BEFORE DELETE ON tb_event
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_event
    set kd_event = OLD.kd_event,
    nama_event=old.nama_event,
    nama_eventn='DEL',
    nama_pt=old.nama_pt,
    nama_ptn='DEL',
    contact_person=old.contact_person,
    contact_personn='DEL',
    date_start=old.date_start,
    date_startn='DEL',
    date_finish=old.date_finish,
    date_finishn='DEL',
    status_event=old.status_event,
    status_eventn='DEL',
    no_invoice=old.no_invoice,
    no_invoicen='DEL',
    editor_event=old.editor_event,
    editor_eventn='DEL',
    tgl_edit_event = NOW(); 
END$$