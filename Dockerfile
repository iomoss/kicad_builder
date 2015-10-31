FROM debian:jessie
MAINTAINER Emil 'Skeen' Madsen <sovende@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

# We need devscripts to build packages
RUN apt-get update
RUN apt-get install -y devscripts

# Get add-apt-repository
RUN apt-get install -y software-properties-common

# Add the Ubuntu ppa for kicad-4
RUN add-apt-repository --yes ppa:js-reynaud/kicad-4
# We want packages from vivid (not from jessie), and source packages
RUN echo "deb-src http://ppa.launchpad.net/js-reynaud/kicad-4/ubuntu vivid main" > /etc/apt/sources.list.d/js-reynaud-kicad-4-jessie.list

# Pull in all kicad dependencies
RUN apt-get update
RUN apt-get build-dep -y kicad

#Prepare the build scripts
COPY build.sh build.sh
RUN chmod +x build.sh
CMD ["/bin/bash", "build.sh"]
#CMD ["/bin/bash"]
