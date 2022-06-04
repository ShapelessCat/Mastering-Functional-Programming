FROM hseeberger/scala-sbt:8u222_1.3.5_2.13.1

RUN mkdir -p /root/.sbt/1.0/plugins
RUN echo "\
addSbtPlugin(\"io.get-coursier\" % \"sbt-coursier\" % \"2.0.8\")\n\
addSbtPlugin(\"io.spray\"        % \"sbt-revolver\" % \"0.9.1\")\n\
" > /root/.sbt/1.0/plugins/plugins.sbt

WORKDIR /root/examples
