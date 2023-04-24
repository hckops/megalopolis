FROM python:3-slim AS builder
COPY . /build

# install dependencies
COPY requirements.txt .
RUN pip install --target=/build -r requirements.txt

FROM gcr.io/distroless/python3

COPY --from=builder /build /app
WORKDIR /app

ENV PYTHONPATH /app
CMD [ "exploit.py" ]
