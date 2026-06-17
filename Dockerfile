FROM debian:13

RUN apt update
RUN apt install -y curl bash ca-certificates nano
RUN curl -fsSL https://claude.ai/install.sh | bash
ENV PATH="/root/.local/bin:${PATH}"
WORKDIR /workspace

CMD ["/bin/bash"]
