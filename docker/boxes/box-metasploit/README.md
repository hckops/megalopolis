## hckops/box-metasploit

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/box-metasploit?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/box-metasploit?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/box-metasploit

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
