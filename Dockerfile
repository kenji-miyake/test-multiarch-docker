FROM ubuntu:20.04 as foo

RUN touch /foo

CMD ["/bin/bash"]

FROM foo as bar

RUN touch /bar

CMD ["/bin/bash"]
