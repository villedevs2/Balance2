LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := balance

LOCAL_C_INCLUDES += $(LOCAL_PATH)/android/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/game/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/rapidxml-1.13/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/boost/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/format/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/glm/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libpng/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/zlib/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Collision/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Collision/Shapes/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Common/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Dynamics/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Dynamics/Contacts/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Dynamics/Joints/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Box2D/Rope/


FILE_LIST := $(wildcard $(LOCAL_PATH)/*.cpp) 
FILE_LIST += $(wildcard $(LOCAL_PATH)/android/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/game/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/format/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/libpng/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/zlib/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Collision/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Collision/Shapes/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Common/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Dynamics/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Dynamics/Contacts/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Dynamics/Joints/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/Box2D/Rope/*.cpp)
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
