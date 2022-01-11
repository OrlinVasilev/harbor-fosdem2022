ARG source_image
FROM $source_image

RUN apk add --no-cache util-linux

CMD uuidgen