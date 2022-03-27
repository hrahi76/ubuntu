RUN apt-get update -y
RUN apt-get install apache2 -y
RUN systemctl start apache2
RUN systemctl enable apache2
RUN mkdir /var/www/html
RUN echo 'ubuntu in a container' > /var/www/html/index.html
ENV HOME /root
WORKDIR /root
CMD ["bash"]
EXPOSE 8080
~                                                                                                       
~                   
