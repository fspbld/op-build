# OpenPower Firmware Build Environment

The OpenPower firmware build process uses Buildroot to create a toolchain and
build the various components of the PNOR firmware, including Hostboot, Skiboot,
and Petitboot.

## Building an image

```
git clone --recursive git@github.com:open-power/op-build.git
cd op-build
. op-build-env
op-build palmetto_defconfig && op-build
```

### Dependancies for *64-bit* Ubuntu/Debian systems

1. Install Ubuntu (>= 14.04) or Debian (>= 7.5) 64-bit.
2. Install the packages necessary for the build:
```
sudo apt-get install cscope ctags libz-dev libexpat-dev \
  python language-pack-en texinfo \
  build-essential g++ git bison flex unzip \
  libxml-simple-perl libxml-sax-perl libxml2-dev libxml2-utils xsltproc
```

### Dependancies for *64-bit* Fedora systems

1. Install Fedora 23 64-bit.
2. Install the packages necessary for the build:
```
sudo dnf install vim gcc-c++ flex bison git ctags cscope expat-devel patch \
  zlib-devel zlib-static make unzip tar bzip2 python wget cpio \
  bc xz findutils perl-XML-Simple perl-Thread-Queue perl-Env   \
  perl-XML-LibXML perl-Digest-SHA1 perl-bignum libxml2-devel   \
  libxslt hostname
```