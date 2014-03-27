TARGET_DIR = target
TARGET_MHEG_DIR = $(TARGET_DIR)/mheg
TARGET_ASN_DIR = $(TARGET_DIR)/asn

COMPILER_JAR = ~/Downloads/MhegPlus.Compiler-1.0.1.jar
COMPILER_CMD = java -jar $(COMPILER_JAR)

PLAYER_JAR = ~/Downloads/MhegPlus.MhegPlayer-1.0.1.jar
MHEG_PROFILE = uk.dtt
PLAYER_MAPPINGS = -Dfile-mapping.//a=$(TARGET_MHEG_DIR)/a -Dfile-mapping.//slate.asn=$(TARGET_MHEG_DIR)/slate.mhg
PLAYER_OPTS = -Ddfs-root-dir=$(TARGET_ASN_DIR) -Dmheg-source-root=$(TARGET_MHEG_DIR) -Dmheg.profile=$(MHEG_PROFILE) $(PLAYER_MAPPINGS)

.PHONY: all

all: mheg asn

mheg:
	mkdir -p $(TARGET_MHEG_DIR) &> /dev/null
	$(COMPILER_CMD) -f src/a -p -P -t src/slate.mheg+ -d $(TARGET_MHEG_DIR)

asn:
	mkdir -p $(TARGET_ASN_DIR) &> /dev/null
	$(COMPILER_CMD) -f src/a -p -P -a src/slate.mheg+ -d $(TARGET_ASN_DIR)

play: mheg asn
	java $(PLAYER_OPTS) -jar $(PLAYER_JAR)

clean:
	rm -rf $(TARGET_DIR)

