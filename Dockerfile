FROM ruby:2.7.1
ENV RUBYGEMS_VERSION=3.1.2
# Set default locale for the environment	
ENV LC_ALL C.UTF-8	
ENV LANG en_US.UTF-8	
ENV LANGUAGE en_US.UTF-8	

LABEL "com.github.actions.name"="Building a jekyll site from configured directory, maybe deploying it."	
LABEL "com.github.actions.description"="A more configurable jekyll repo builder with configurable deployment options."	
LABEL "com.github.actions.icon"="globe"	
LABEL "com.github.actions.color"="green"	

LABEL version="0.0.2"
LABEL repository="http://github.com/ileadall42/jekyll-build-optional-deploy-gh-pages"	
LABEL maintainer="ileadall42"

ADD entrypoint.sh /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["sh", "/entrypoint.sh"]
