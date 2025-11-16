# Component directive
idf_component_register(
    SRCS "bsp.c"
    INCLUDE_DIRS .
    REQUIRES esp3d_log lvgl spi_bus ili9341 sw_spi i2c_bus ft5x06 ili9341 disp_backlight
)