DELIMITER $$
CREATE TRIGGER tlog_pax_bfr 
    BEFORE UPDATE ON tb_pax
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_pax
    set no_ktp = OLD.no_ktp,
		no_passport = OLD.no_passport,
		creator_pax = OLD.creator_pax,
		kd_event = OLD.kd_event,
    request_note=old.request_note,
    request_noten=new.request_note,
    size_shirt=old.size_shirt,
    size_shirtn=new.size_shirt,
    request_room=old.request_room,
    request_roomn=new.request_room,
    img_photo=old.img_photo,
    img_photon=new.img_photo,
    hc_photo=old.hc_photo,
    hc_photon=new.hc_photo,
    extra_pax=old.extra_pax,
    extra_paxn=new.extra_pax,
    status_pax=old.status_pax,
    status_paxn=new.status_pax,
    status_verify_pax=old.status_verify_pax,
    status_verify_paxn=new.status_verify_pax,
    no_visa=old.no_visa,
    no_visan=new.no_visa,
    tgl_visa_iss=old.tgl_visa_iss,
    tgl_visa_issn=new.tgl_visa_iss,
    tgl_visa_exp=old.tgl_visa_exp,
    tgl_visa_expn=new.tgl_visa_exp,
    status_visa=old.status_visa,
    status_visan=new.status_visa,
    editor_pax=old.editor_pax,
    editor_paxn=new.editor_pax,
    tgl_edit_pax = NOW(); 
END$$