FROM registry.redhat.io/rhel8/go-toolset:1.16.7-5 AS builder

ENV GO111MODULE on

RUN git clone https://github.com/kubernetes/community.git &&
        cd community/generator &&
        go build

FROM registry.access.redhat.com/ubi8-minimal:8.5-204

COPY --from=builder /opt/app-root/src/community/generator/generator .

WORKDIR "/workdir"
ENTRYPOINT [ "/generator" ]

# use the container like `podman run --rm --volume $(pwd):/workdir:Z quay.io/open-services-group/community-tooling:v0.1.0-dev`
