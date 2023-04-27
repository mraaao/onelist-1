FROM scratch
ADD ./ /
EXPOSE 5245
CMD ["ping", "baidu.com"]
