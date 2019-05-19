Файл автоматической установки софта, который я использую при работе.

Важные моменты:
1) Vagrant необходимо устанавливать вручную, а не через "sudo apt-get install vagrant", так как из этого репозитория скачивается устаревшая версия

2) Для того, чтобы терминал Tilix был дефолтным в системе, необходим открыть файл: /usr/share/kservices5/ServiceMenus/konsolehere.desktop в консоли и внести корретировки в секцию: 
в терминале sudo nano /usr/share/kservices5/ServiceMenus/konsolehere.desktop

[Desktop Action openTerminalHere]
  
  TryExec=tilix
  
  Exec=tilix -w %f
  
  Icon=utilities-terminal
  
