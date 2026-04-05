# ============================
# HAIKU‑READY MAKEFILE
# ============================
.DEFAULT_GOAL := all

# SDL2 (Haiku)
SDL2_INCS := $(shell pkg-config sdl2 --cflags)
SDL2_LIBS := $(shell pkg-config sdl2 --libs)

# Only Compile Engine on Haiku
RSDK_ONLY :=1

# Video libs (Theora/Ogg/Vorbis)
VIDEO_LIBS = -ltheora -logg -lvorbis -lvorbisfile

# Force SDL2 backend
DEFINES += -DRSDK_USE_SDL2

STATIC  ?= 1
DEBUG   ?= 1
VERBOSE ?= 0
PROFILE ?= 0
RSDK_ONLY ?= 0

RSDK_REVISION ?= 3
ifeq ($(RSDK_REVISION),3)
RSDK_NAME = RSDKv5U
else
RSDK_NAME = RSDKv5
endif

USERTYPE ?= Dummy

OUTDIR      = bin/$(PLATFORM)/$(SUBSYSTEM)
RSDK_OBJDIR = bin/obj/$(PLATFORM)/$(SUBSYSTEM)/RSDKv5
GAME_OBJDIR = bin/obj/$(PLATFORM)/$(GAME_NAME)

# Platform detection
ifeq ($(OS),Windows_NT)
PLATFORM ?= Windows
else
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Haiku)
PLATFORM ?= Haiku
endif
ifeq ($(UNAME_S),Darwin)
PLATFORM ?= macOS
endif
endif

PLATFORM ?= Unknown

# Flags
ifeq ($(DEBUG),1)
CXXFLAGS += -g
CFLAGS  += -g
STRIP = :
else
CXXFLAGS += -O3
CFLAGS  += -O3
endif

ifeq ($(STATIC),1)
CXXFLAGS += -static
CFLAGS  += -static
endif

CFLAGS_ALL  += $(CFLAGS) -fsigned-char
CXXFLAGS_ALL += $(CXXFLAGS) -std=c++17 -fsigned-char -fpermissive

# Includes
RSDK_INCLUDES += \
-I./RSDKv5/ \
-I./dependencies/all/ \
-I./dependencies/all/tinyxml2/ \
-I./dependencies/all/sdl2/ \
-I./dependencies/all/iniparser/

ifeq ($(RSDK_ONLY),0)
GAME_INCLUDES = \
-I./$(GAME_NAME)/ \
-I./$(GAME_NAME)/Objects/
endif

# Sources
RSDK_SOURCES = \
RSDKv5/main \
RSDKv5/RSDK/Core/RetroEngine \
RSDKv5/RSDK/Core/Math \
RSDKv5/RSDK/Core/Reader \
RSDKv5/RSDK/Core/Link \
RSDKv5/RSDK/Core/ModAPI \
RSDKv5/RSDK/Dev/Debug \
RSDKv5/RSDK/Storage/Storage \
RSDKv5/RSDK/Storage/Text \
RSDKv5/RSDK/Graphics/Drawing \
RSDKv5/RSDK/Graphics/Scene3D \
RSDKv5/RSDK/Graphics/Animation \
RSDKv5/RSDK/Graphics/Sprite \
RSDKv5/RSDK/Graphics/Palette \
RSDKv5/RSDK/Graphics/Video \
RSDKv5/RSDK/Audio/Audio \
RSDKv5/RSDK/Input/Input \
RSDKv5/RSDK/Scene/Scene \
RSDKv5/RSDK/Scene/Collision \
RSDKv5/RSDK/Scene/Object \
RSDKv5/RSDK/Scene/Objects/DefaultObject \
RSDKv5/RSDK/Scene/Objects/DevOutput \
RSDKv5/RSDK/User/Core/UserAchievements \
RSDKv5/RSDK/User/Core/UserCore \
RSDKv5/RSDK/User/Core/UserLeaderboards \
RSDKv5/RSDK/User/Core/UserPresence \
RSDKv5/RSDK/User/Core/UserStats \
RSDKv5/RSDK/User/Core/UserStorage \
dependencies/all/tinyxml2/tinyxml2 \
dependencies/all/iniparser/iniparser \
dependencies/all/iniparser/dictionary \
dependencies/all/miniz/miniz

ifeq ($(RSDK_ONLY),0)
GAME_SOURCES = $(GAME_NAME)/Game
GAME_SOURCES += $(GAME_NAME)/Objects/All
endif

# Objects
RSDK_OBJECTS = $(addprefix $(RSDK_OBJDIR)/, $(addsuffix .o, $(RSDK_SOURCES)))
GAME_OBJECTS = $(addprefix $(GAME_OBJDIR)/, $(addsuffix .o, $(GAME_SOURCES)))

# Create dirs
$(shell mkdir -p $(OUTDIR))
$(shell mkdir -p $(RSDK_OBJDIR))
$(shell mkdir -p $(GAME_OBJDIR))

# ============================
# Compile rules (TAB encoded)
# ============================

$(RSDK_OBJDIR)/%.o: %.c
	@mkdir -p $(@D)
	@echo compiling $<...
	$(CC) -c $(CFLAGS_ALL) $(SDL2_INCS) $(RSDK_INCLUDES) $(DEFINES) $< -o $@

$(RSDK_OBJDIR)/%.o: %.cpp
	@mkdir -p $(@D)
	@echo compiling $<...
	$(CXX) -c $(CXXFLAGS_ALL) $(SDL2_INCS) $(RSDK_INCLUDES) $(DEFINES) $< -o $@

$(GAME_OBJDIR)/%.o: %.c
	@mkdir -p $(@D)
	@echo compiling $<...
	$(CC) -c -fPIC $(CFLAGS_ALL) $(SDL2_INCS) $(GAME_INCLUDES) $(DEFINES) $< -o $@

# ============================
# Linking
# ============================

RSDK_PATH = $(OUTDIR)/$(RSDK_NAME)
# GAME_PATH = $(OUTDIR)/$(GAME_NAME).so

$(RSDK_PATH): $(RSDK_OBJECTS)
	@echo linking RSDK...
	$(CXX) $(CXXFLAGS_ALL) $(RSDK_OBJECTS) $(SDL2_LIBS) $(VIDEO_LIBS) -o $@
	$(STRIP) $@

$(GAME_PATH): $(GAME_OBJECTS)
	@echo linking game...
	$(CXX) $(CXXFLAGS_ALL) -shared $(GAME_OBJECTS) $(SDL2_LIBS) $(VIDEO_LIBS) -o $@
	$(STRIP) $@

all: $(RSDK_PATH) $(GAME_PATH)

clean:
	rm -rf $(RSDK_PATH) $(RSDK_OBJDIR) $(GAME_PATH) $(GAME_OBJDIR)
