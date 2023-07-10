#!/bin/bash

echo "Demostration of function in shell scripting"

showuptime(){
	local UP=$(uptime | cut -c1-)
	cat << EOF

---

Details of this machine and it's running time are $UP

---

EOF
}

showuptime
