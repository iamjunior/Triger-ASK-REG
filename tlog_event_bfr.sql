DELIMITER $$
CREATE TRIGGER tlog_event_bfr 
    BEFORE UPDATE ON tb_event
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_event
    set kd_event = OLD.kd_event,
    nama_event=old.nama_event,
    nama_eventn=new.nama_event,
    nama_pt=old.nama_pt,
    nama_ptn=new.nama_pt,
    contact_person=old.contact_person,
    contact_personn=new.contact_person,
    date_start=old.date_start,
    date_startn=new.date_start,
    date_finish=old.date_finish,
    date_finishn=new.date_finish,
    status_event=old.status_event,
    status_eventn=new.status_event,
    no_invoice=old.no_invoice,
    no_invoicen=new.no_invoice,
    editor_event=old.editor_event,
    editor_eventn=new.editor_event,
    tgl_edit_event = NOW(); 
END$$