**free
ctl-opt nomain
        option(*nodebugio:*srcstmt:*nounref)
        bnddir('QC2LE');
/include '/home/NOVY400/include/CKOOL.rpgleinc'

 
//                                                                    
//\brief  Ecrit un message ou une expression dans la log du job.                                      
//                                                                    
//|                                                                   
//|   example:  CKOOL_writeJobLog( 'Write this data ' + %char(toto)); 
//\param /input  : Message ou Expression.                                       
//\TODO                                                               
//.....                                                               
//                                                                    
dcl-proc CKOOL_writeJobLog export;
  dcl-pi *N;
       pText varchar(65535) Const;
  end-pi;
  dcl-c THISPROC 'CKOOL_writeJobLog'; 
  dcl-s lErrorCode int(10);
  monitor;
  //initialisation
  // traitement
  clear lErrorCode;
  lErrorCode = Qp0zLprintf(pText);
  // finalisation 
  return;
  on-error;
  //ko =======> anomalie ................
  return;
  endmon;
end-proc;

