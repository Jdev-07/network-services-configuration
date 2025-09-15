;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ubuntu-server. root.cloudtech.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@		IN	NS		ubuntuserver.cloudtech.com.
ubuntuserver	IN	A		172.16.0.2

@		IN	MX	10	mail.cloudtech.com.
mail		IN	A		172.16.0.5

walter		IN	A		172.16.0.15

white		IN	A		172.16.0.16

heisenberg	IN	A		172.16.0.17	

