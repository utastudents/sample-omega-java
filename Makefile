HOSTNAME=$(shell hostname)

ifeq "$(HOSTNAME)" "omega.uta.edu" 
  #change the JDKPATH if you are using omega.uta.edu
  JDKPATH = /opt/jdk1.6.0_20
else ifeq "$(HOSTNAME)" "acadcseapp01.uta.edu"
  #change the JDKPATH if you are using omega-csee.uta.edu
  JDKPATH = /etc/alternatives/java_sdk
else
  #change the JDKPATH if you are using a different host
  JDKPATH = /usr
endif 

# path to additional Classes
CLASSPATH = .
BINPATH = $(JDKPATH)/bin
JAVAC = $(JDKPATH)/bin/javac -classpath $(CLASSPATH)
JAVA  = $(JDKPATH)/bin/java  -classpath $(CLASSPATH)

# build the target class
TARGET = hello
TARGETCLASS = Hello

all : $(TARGET)

$(TARGET): $(TARGET).java
	$(JAVAC) $(TARGET).java

clean : 
	$(RM) $(TARGETCLASS).class 
