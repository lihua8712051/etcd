FROM golang
ADD . /go/src/github.com/coreos/etcd
ADD cmd/vendor /go/src/github.com/coreos/etcd/vendor
RUN ls
RUN go install github.com/coreos/etcd
EXPOSE 2379 2380
ENTRYPOINT ["etcd"]
