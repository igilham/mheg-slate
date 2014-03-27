COMPILER_JAR=MhegPlus-1.0.jar
COMPILER_CMD=java -jar $COMPILER_JAR
TARGET_MHEG_DIR=target/mheg
TARGET_ASN_DIR = target/asn

.PHONY: all

all: mheg asn

mheg:
	mkdir -p $(TARGET_MHEG_DIR)
	$(COMPILER_CMD) -f src/startup -p src/slate.mheg+ -d $(TARGET_MHEG_DIR)

asn:
	mkdir -p $(TARGET_ASN_DIR)
	$(COMPILER_CMD) -f src/a -p src/slate.mheg+ -d $(TARGET_ASN_DIR)

