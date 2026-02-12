FROM alpine:3.19

# Create the log writer script
RUN printf '%s\n' '#!/bin/sh' \
'zeros=$(printf "%4090s" "" | tr " " "0")' \
'while true; do' \
'  printf "%s123456789" "$zeros"' \
'  sleep 60' \
'done' > /log-writer.sh \
&& chmod +x /log-writer.sh

CMD ["/log-writer.sh"]
