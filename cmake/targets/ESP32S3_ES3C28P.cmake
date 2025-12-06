if(ESP32S3_ES3C28P)
    set(TFT_TARGET "ESP32S3_ES3C28P")
    set(SDKCONFIG ${CMAKE_SOURCE_DIR}/hardware/ESP32S3_ES3C28P/sdkconfig)
    list(APPEND EXTRA_COMPONENT_DIRS ${CMAKE_SOURCE_DIR}/hardware/ESP32S3_ES3C28P/components)
    add_compile_options("-I${CMAKE_SOURCE_DIR}/hardware/ESP32S3_ES3C28P/components/bsp")
    # Add specific usb driver for otg
    list(APPEND EXTRA_COMPONENT_DIRS ${CMAKE_SOURCE_DIR}/hardware/drivers_usb_otg)    
    if (USB_SERIAL_SERVICE)
        # Enable USB-OTG as serial alternative for communications
        add_compile_options(-DESP3D_USB_SERIAL_FEATURE=1)
    endif()
    set (RESOLUTION_SCREEN "res_320_240")
endif()
