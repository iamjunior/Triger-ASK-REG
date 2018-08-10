DELIMITER $$
CREATE TRIGGER tlog_scan_extra_bfr
    BEFORE UPDATE ON tb_scan_extra
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_scan_extra
    set id_pax = OLD.id_pax,
		no_ktpx = OLD.no_ktpx,
		creator_scanx = OLD.creator_scanx,
    img_ktpx=old.img_ktpx,
    img_ktpxn=new.img_ktpx,
    hc_ktpx=old.hc_ktpx,
    hc_ktpxn=new.hc_ktpx,
    editor_scanx=old.editor_scanx,
    editor_scanxn=new.editor_scanx,
    tgl_edit_scanx = NOW(); 
END$$