Prompt ####################################################
Prompt ### drop all objects                             ###
Prompt ####################################################
Prompt 

SPO drop_all.lst
@@drop_all
SPO OFF

Prompt ####################################################
Prompt ### create forms-framework-objects               ###
Prompt ####################################################
Prompt 

@@create_all

Prompt ####################################################
Prompt ### insert data                                  ###
Prompt ####################################################
Prompt 

SPO insert_frw.lst
@@insert_frw
SPO OFF

Prompt ####################################################
Prompt ### additional grants ###
Prompt ####################################################
Prompt 
