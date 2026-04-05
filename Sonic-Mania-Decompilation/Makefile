# ============================
# Sonic Mania – Haiku Game Module Makefile
# ============================

.DEFAULT_GOAL := all

# SDL2
SDL2_INCS := $(shell pkg-config sdl2 --cflags)
SDL2_LIBS := $(shell pkg-config sdl2 --libs)

# Video libs
VIDEO_LIBS = -ltheora -logg -lvorbis -lvorbisfile

# Required for Mania
DEFINES += -DRSDK_USE_SDL2

# Game module name
GAME_NAME := Game
GAME_SUFFIX := .so

# Output paths
PLATFORM := Haiku
OUTDIR := bin/$(PLATFORM)
OBJDIR := obj/$(PLATFORM)

# Flags
CFLAGS_ALL := -O2 -fPIC -fsigned-char $(SDL2_INCS) $(DEFINES)
CXXFLAGS_ALL := -O2 -fPIC -std=c++17 -fsigned-char $(SDL2_INCS) $(DEFINES)

# Includes
GAME_INCLUDES := \
-I./Game \
-I./Game/Objects

# Sources
GAME_SOURCES := \
Game/Game \
Game/Objects/All

# Objects
GAME_OBJECTS := $(addprefix $(OBJDIR)/, $(addsuffix .o, $(GAME_SOURCES)))

# Create dirs
$(shell mkdir -p $(OUTDIR))
$(shell mkdir -p $(OBJDIR))

# ============================
# Compile rules (TAB encoded)
# ============================

$(OBJDIR)/%.o: %.c
	@mkdir -p $(@D)
	@echo compiling $<...
	$(CC) -c $(CFLAGS_ALL) $(GAME_INCLUDES) $< -o $@

$(OBJDIR)/%.o: %.cpp
	@mkdir -p $(@D)
	@echo compiling $<...
	$(CXX) -c $(CXXFLAGS_ALL) $(GAME_INCLUDES) $< -o $@

# ============================
# Linking
# ============================

GAME_PATH := $(OUTDIR)/$(GAME_NAME)$(GAME_SUFFIX)

$(GAME_PATH): $(GAME_OBJECTS)
	@echo linking libgame.so...
	$(CXX) -shared $(GAME_OBJECTS) $(SDL2_LIBS) $(VIDEO_LIBS) -o $@

all: $(GAME_PATH)

clean:
	rm -rf $(OBJDIR) $(GAME_PATH)
