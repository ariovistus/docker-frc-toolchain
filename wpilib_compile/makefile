INCLUDES = -I downloads/allwpilib/hal/src/main/native/include/ \
	-I downloads/allwpilib/wpilibc/src/main/native/include \
	-I downloads/wpiutil/src/main/native/include

LIBPATHS = -Ldownloads/linux/athena/shared/

LIBS = -lNiFpga -lNiRioSrv -lNiFpgaLv -lRoboRIO_FRC_ChipObject -lvisa \
	-lniriosession -lniriodevenum -lFRC_NetworkCommunication  \
	-lwpiHal -lwpiutil -lwpilibc  \
	-lopencv_videoio -lopencv_imgproc -lopencv_photo -lopencv_features2d \
	-lopencv_core -lopencv_video -lopencv_flann -lopencv_stitching \
	-lopencv_ml -lopencv_shape -lopencv_imgcodecs -lopencv_objdetect \
	-lopencv_superres -lopencv_highgui -lopencv_calib3d -lopencv_java320 \
	-lopencv_videostab \
	-lcscore -lntcore 

makkey:
	$(CXX) -std=c++11 test.cpp -o tok $(INCLUDES) $(LIBPATHS) $(LIBS)
