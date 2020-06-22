#change the JDKPATH if you are not using omega.uta.edu
JDKPATH = /opt/jdk1.6.0_20

# path to additional Classes
CLASSPATH = 
BINPATH = $(JDKPATH)/bin
JAVAC = $(JDKPATH)/bin/javac -classpath $(CLASSPATH)
JAVA  = $(JDKPATH)/bin/java  -classpath $(CLASSPATH)

# build the target class
TARGET = hello

all : $(TARGET)

$(TARGET): $(TARGET).java
	$(JAVAC) $(TARGET).java

clean : 
	$(RM) $(TARGET) 
