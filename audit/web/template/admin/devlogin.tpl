{{if $logintool eq 'putty' }}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartPutty&putty_path=c:\\freesvr\\ssh\\putty.exe&protocol={{$loginmethod}}&host={{$ip}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}{{if $loginmethod eq 'ssh' or $loginmethod eq 'ssh2'}}&entrust_username={{$entrust_username}}{{/if}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&";
{{elseif $logintool eq 'securecrt'}}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartSecureCRT&securecrt_path=c:\\freesvr\\ssh\\SecureCRT.lnk&protocol={{$loginmethod}}&host={{$ip}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}{{if $loginmethod eq 'ssh' or $loginmethod eq 'ssh2'}}&entrust_username={{$entrust_username}}{{/if}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&crttab={{$crttab}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&";
{{elseif $logintool eq 'xshell'}}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartXshell&xshell_path=c:\\freesvr\\ssh\\SecureCRT.lnk&protocol={{$loginmethod}}&host={{$ip}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}{{if $loginmethod eq 'ssh' or $loginmethod eq 'ssh2'}}&entrust_username={{$entrust_username}}{{/if}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&crttab={{$crttab}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&";
{{elseif $logintool eq 'xftp'}}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartXftp&xftp_path=c:\\freesvr\\ssh\\SecureCRT.lnk&protocol={{if $loginmethod ne 'ftp'}}sftp{{else}}ftp{{/if}}&host={{$ip}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}{{if $loginmethod eq 'ssh' or $loginmethod eq 'ssh2'}}&entrust_username={{$entrust_username}}{{/if}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&crttab={{$crttab}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&";
{{elseif $logintool eq 'filezilla'}}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartFileZilla&xftp_path=c:\\freesvr\\ssh\\SecureCRT.lnk&protocol={{if $loginmethod ne 'ftp'}}sftp{{else}}ftp{{/if}}&host={{$ip}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}{{if $loginmethod eq 'ssh' or $loginmethod eq 'ssh2'}}&entrust_username={{$entrust_username}}{{/if}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&crttab={{$crttab}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&";
{{elseif $logintool eq 'flashxp' }}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartFlashXP&flash_path=c:\\freesvr\\sftp\\FlashXP.exe&protocol={{if $loginmethod eq 'ssh'}}sftp{{else}}{{$loginmethod}}{{/if}}&host={{$proxy_addr}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&";
{{elseif $logintool eq 'webssh'}}webssh(0,'{{$dusername}}@{{$ip}}','http://{{$proxy_addr}}:9527/?title={{$dusername}}@{{$ip}}&host={{$proxy_addr}}&port=22&username={{$webusername}}&password={{$password}}{{$dynamic_pwd}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}')
{{elseif $logintool eq 'gateone'}}webssh(1,'{{$dusername}}@{{$ip}}','admin.php?controller=admin_pro&action=gateone&title={{$dusername}}@{{$ip}}&host={{$proxy_addr}}&port=22&username={{$webusername}}&password={{$password}}{{$dynamic_pwd}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}')
{{elseif $loginmethod eq 'ftp' or $loginmethod eq 'sftp'}}{{if $smarty.session.urlprotocol eq 1}}baoleiji{{else}}freesvr{{/if}}://"&action=StartWinscp&flash_path=c:\\freesvr\\sftp\\WinSCP.exe&protocol={{$loginmethod}}&host={{$proxy_addr}}&port={{$port}}&target_username={{$dusername}}&target_ip={{$ip}}&username={{$username}}&password={{$password}}{{$dynamic_pwd}}&entrust_password={{$entrust_password}}{{if $loginmethod eq 'ssh' or $loginmethod eq 'ssh2'}}&entrust_username={{$entrust_username}}{{/if}}&sid={{$sid}}&vpnip=1.1.1.1&proxy_addr={{$proxy_addr}}&debug={{$smarty.session.ADMIN_FREESVRDEBUG}}&sshport={{$member.sshport}}&rdpport={{$member.rdpport}}&showdomain={{$showdomain}}&hostname={{$hostname|urlencode}}&"
{{/if}}