# box-metasploit

Metasploit and SearchSploit

* [Documentation](https://docs.rapid7.com/metasploit)
* [Exploit Database](https://www.exploit-db.com)
* [exploitdb](https://gitlab.com/exploit-database/exploitdb)

```bash
# official
docker run --rm -it --name metasploit metasploitframework/metasploit-framework

# build
docker build -t hckops/box-metasploit docker/box-metasploit

# run
docker run --rm -it --name box-metasploit -p 4444:4444 hckops/box-metasploit [msfconsole|searchsploit]

# update db
searchsploit -u
```
