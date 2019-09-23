#FROM golang:onbuild
#EXPOSE 8080
FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get "github.com/go-sql-driver/mysql"
RUN go build -o main . 
CMD ["/app/main"]
