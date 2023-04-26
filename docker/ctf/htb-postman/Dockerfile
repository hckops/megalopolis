FROM python:3-slim AS builder
COPY . /build

# install dependencies
COPY requirements.txt .
RUN pip install --target=/build -r requirements.txt

FROM gcr.io/distroless/python3

ENV REMOTE_IP=10.10.14.14
ENV REMOTE_PORT=4444

COPY --from=builder /build /app
WORKDIR /app

ENV PYTHONPATH /app
CMD [ "exploit.py" ]
