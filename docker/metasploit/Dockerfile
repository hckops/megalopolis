FROM metasploitframework/metasploit-framework

# default APP_HOME=/usr/src/metasploit-framework
RUN ln -sf ${APP_HOME}/msfconsole /usr/local/bin/msfconsole

# add searchsploit (ignore exploitdb-papers)
COPY .searchsploit_rc /root/
RUN git clone --single-branch --depth 1 https://gitlab.com/exploit-database/exploitdb.git /opt/exploitdb && \
  ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit

CMD ["/bin/bash"]
