FROM         ubuntu
RUN          apt-get udpate && apt-get -y install python
RUN          pip install flask flask-mysql
COPY         . /opt/source_code
ENTRYPOINT   FLASK_APP = /opt/source_code/app.py flask run
EXPOSE       8080
WORKDIR      /opt

#CMD basically replace the value at the terminal command
#CMD          ["executable","value"]     
#ENTRYPOINT basically appends the value to terminal command
#ENTRYPOINT   ["value"]                  
#ENTRYPOINT ["sleep"] CMD["5"]  // if nothing present at terminal, it will replace the blank value to 5