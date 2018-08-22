FROM alfresco/alfresco-share:6.0.b

ARG TOMCAT_DIR=/usr/local/tomcat

RUN mkdir -p $TOMCAT_DIR/amps_share

# Does not work to use modules dir, no virtual web app loader config for tomcat
# RUN mkdir -p $TOMCAT_DIR/modules/share

# COPY target/amps_share $TOMCAT_DIR/amps_share
# COPY target/jars $TOMCAT_DIR/modules/share
COPY target/*.jar $TOMCAT_DIR/webapps/share/WEB-INF/lib
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/default/images/alfresco.svg
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/lightTheme/images/alfresco.svg
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/yellowTheme/images/alfresco.svg
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/greenTheme/images/alfresco.svg
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/greyTheme/images/alfresco.svg
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/hcBlack/images/alfresco.svg
COPY images/alfresco.svg $TOMCAT_DIR/webapps/share/themes/gdocs/images/alfresco.svg

RUN java -jar $TOMCAT_DIR/alfresco-mmt/alfresco-mmt*.jar install \
              $TOMCAT_DIR/amps_share $TOMCAT_DIR/webapps/share -directory -nobackup -force


