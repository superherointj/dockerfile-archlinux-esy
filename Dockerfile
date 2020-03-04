FROM superherointj/archlinux-base-devel:latest as archlinux-esy

### Enabling PERL path for `shasum` dependency and others
ENV PATH=/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:${PATH}

RUN npm install -g --unsafe-perm=true esy

RUN mkdir /workdir
WORKDIR /workdir

RUN esy version
