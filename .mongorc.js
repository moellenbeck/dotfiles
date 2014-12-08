
print(">>>> load .mongorc.js");


host = db.serverStatus().host; //since host should not change
prompt = function() {
  return db+"@"+host+"$ > ";
}

