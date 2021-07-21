FROM python
RUN pip install mongo-connector
RUN pip install pymongo
RUN pip install 'mongo-connector[elastic5]'
COPY run.sh /
COPY config.json /
CMD /run.sh
