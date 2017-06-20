# Set the base image of this container
FROM alpine:3.5

# File Author / Maintainer 
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="1.2"
LABEL version="0.1"
LABEL software="SBML2MetexploreJsonGraph"


RUN apk -U add bash gawk
ADD jsApp /opt/jsApp
ADD deployApp4Galaxy.sh /usr/local/bin/deployApp4Galaxy
RUN chmod a+x /usr/local/bin/deployApp4Galaxy


# Test Scripts
ADD runTest1.sh /usr/local/bin/runTest1.sh
RUN chmod a+x /usr/local/bin/runTest1.sh

ENTRYPOINT ["deployApp4Galaxy"]