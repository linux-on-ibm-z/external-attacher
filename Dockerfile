ARG ARCH=""
FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Attacher"

COPY ./bin/csi-provisioner-${ARCH} csi-provisioner
ENTRYPOINT ["/csi-attacher"]
