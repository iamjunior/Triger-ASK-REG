DELIMITER $$
CREATE TRIGGER tlog_pax_extra_bfr 
    BEFORE UPDATE ON tb_pax
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_pax_extra
    set id_pax = OLD.id_pax,
		no_ktpx = OLD.no_ktpx,
		no_passportx = OLD.no_passportx,
		creator_paxx = OLD.creator_paxx,
		kd_event = OLD.kd_event,
    size_shirtx=old.size_shirtx,
    size_shirtxn=new.size_shirtx,
    img_photox=old.img_photox,
    img_photoxn=new.img_photox,
    hc_photox=old.hc_photox,
    hc_photoxn=new.hc_photox,
    no_visax=old.no_visax,
    no_visaxn=new.no_visax,
    tgl_visa_issx=old.tgl_visa_issx,
    tgl_visa_issxn=new.tgl_visa_issx,
    tgl_visa_expx=old.tgl_visa_expx,
    tgl_visa_expxn=new.tgl_visa_expx,
    status_visax=old.status_visax,
    status_visaxn=new.status_visax,
    editor_paxx=old.editor_paxx,
    editor_paxxn=new.editor_paxx,
    tgl_edit_pax_extra = NOW(); 
END$$