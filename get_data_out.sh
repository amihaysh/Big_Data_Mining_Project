
amihay@amihays-MacBook-Air ~ % rsync -avP -e "ssh -p 12345" \
  amihay_israel@localhost:/sci/labs/orzuk/orzuk/teaching/big_data_project_52017/2024_25/arxiv_data/arxiv-metadata-oai-snapshot.json \
  ~/Downloads/

The authenticity of host '[localhost]:12345 ([::1]:12345)' can't be established.
ED25519 key fingerprint is SHA256:rb94bKd2SZTzKmNzL/2AaLy8YeuRmboXSgiln1I27/c.
This host key is known by the following other names/addresses:
    ~/.ssh/known_hosts:3: moriah-gw.cs.huji.ac.il
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '[localhost]:12345' (ED25519) to the list of known hosts.
(amihay_israel@localhost) (IDng) Password: 
Transfer starting: 1 files
arxiv-metadata-oai-snapshot.json
     3686827814 100%   43.59MB/s   00:01:20 (xfer#1, to-check=0/1)

sent 38 bytes  received 3687728087 bytes  36877281250000 bytes/sec
total size is 3686827814  speedup is 1.00
