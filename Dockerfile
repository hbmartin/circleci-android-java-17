FROM cimg/android:2023.02.1
RUN sudo apt-get update && sudo apt --no-install-recommends install -y openjdk-17-jdk && \
            sudo rm -rf /var/lib/apt/lists/* && \
            java -version
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV JDK_HOME=${JAVA_HOME}
ENV JRE_HOME=${JDK_HOME}
ENV PATH=${JAVA_HOME}:${PATH}