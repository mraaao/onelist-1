FROM scratch
ADD ./ /
EXPOSE 5245
CMD ["/onelist","server","--no-prefix"]
