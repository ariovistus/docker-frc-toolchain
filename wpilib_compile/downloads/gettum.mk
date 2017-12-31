SHAREDIR = linux/athena/shared

all: allwpilib wpiutil nilibraries.zip cscore.zip hal.zip wpilib.zip wpiutil.zip ntcore.zip opencv.zip

allwpilib:
	git clone git@github.com:wpilibsuite/allwpilib.git

wpiutil:
	git clone git@github.com:wpilibsuite/wpiutil.git

nilibraries.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/edu/wpi/first/ni-libraries/ni-libraries/2018.1.1-beta-5-20171226183228-4-g40eb6df/ni-libraries-2018.1.1-beta-5-20171226183228-4-g40eb6df-linuxathena.zip --output-document nilibraries.zip
	unzip nilibraries.zip
	if [ ! -f $(SHAREDIR)/libFRC_NetworkCommunication.so ]; then ln -T $(SHAREDIR)/libFRC_NetworkCommunication.so.18.0.0 $(SHAREDIR)/libFRC_NetworkCommunication.so; fi
	if [ ! -f $(SHAREDIR)/libNiFpga.so ]; then ln -T $(SHAREDIR)/libNiFpga.so.17.0.0 $(SHAREDIR)/libNiFpga.so; fi
	if [ ! -f $(SHAREDIR)/libNiRioSrv.so ]; then ln -T $(SHAREDIR)/libNiRioSrv.so.17.0.0 $(SHAREDIR)/libNiRioSrv.so; fi
	if [ ! -f $(SHAREDIR)/libNiFpgaLv.so ]; then ln -T $(SHAREDIR)/libNiFpgaLv.so.17.0.0 $(SHAREDIR)/libNiFpgaLv.so; fi
	if [ ! -f $(SHAREDIR)/libniriodevenum.so ]; then ln -T $(SHAREDIR)/libniriodevenum.so.17.0.0 $(SHAREDIR)/libniriodevenum.so; fi
	if [ ! -f $(SHAREDIR)/libniriosession.so ]; then ln -T $(SHAREDIR)/libniriosession.so.17.0.0 $(SHAREDIR)/libniriosession.so; fi
	if [ ! -f $(SHAREDIR)/libRoboRIO_FRC_ChipObject.so ]; then ln -T $(SHAREDIR)/libRoboRIO_FRC_ChipObject.so.18.0.0 $(SHAREDIR)/libRoboRIO_FRC_ChipObject.so; fi

cscore.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/edu/wpi/first/cscore/cscore-cpp/1.0.2-20170818232313-9-g2d3cf1b/cscore-cpp-1.0.2-20170818232313-9-g2d3cf1b-all.zip --output-document cscore.zip
	unzip cscore.zip

hal.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/edu/wpi/first/hal/hal/2018.1.1-beta-5-20171228224732-6-g0213163/hal-2018.1.1-beta-5-20171228224732-6-g0213163-linuxathena.zip --output-document=hal.zip
	unzip hal.zip

wpilib.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/edu/wpi/first/wpilibc/wpilibc/2018.1.1-beta-5-20171228224732-6-g0213163/wpilibc-2018.1.1-beta-5-20171228224732-6-g0213163-linuxathena.zip --output-document=wpilib.zip
	unzip wpilib.zip

wpiutil.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/edu/wpi/first/wpiutil/wpiutil-cpp/3.0.0-beta-4-20171229232425-1-gcd4b7b6/wpiutil-cpp-3.0.0-beta-4-20171229232425-1-gcd4b7b6-linuxathena.zip --output-document=wpiutil.zip
	unzip wpiutil.zip

ntcore.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/edu/wpi/first/ntcore/ntcore-cpp/4.0.0-beta-3-20171202180437-4-gaa2de65/ntcore-cpp-4.0.0-beta-3-20171202180437-4-gaa2de65-linuxathena.zip --output-document=ntcore.zip
	unzip ntcore.zip

opencv.zip:
	wget http://first.wpi.edu/FRC/roborio/maven/development/org/opencv/opencv-cpp/3.2.0/opencv-cpp-3.2.0-linuxathena.zip --output-document=opencv.zip
	unzip opencv.zip
	if [ ! -f $(SHAREDIR)/libopencv_core.so ]; then ln -T $(SHAREDIR)/libopencv_core.so.3.2 $(SHAREDIR)/libopencv_core.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_calib3d.so ]; then ln -T $(SHAREDIR)/libopencv_calib3d.so.3.2 $(SHAREDIR)/libopencv_calib3d.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_features2d.so ]; then ln -T $(SHAREDIR)/libopencv_features2d.so.3.2 $(SHAREDIR)/libopencv_features2d.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_flann.so ]; then ln -T $(SHAREDIR)/libopencv_flann.so.3.2 $(SHAREDIR)/libopencv_flann.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_highgui.so ]; then ln -T $(SHAREDIR)/libopencv_highgui.so.3.2 $(SHAREDIR)/libopencv_highgui.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_imgcodecs.so ]; then ln -T $(SHAREDIR)/libopencv_imgcodecs.so.3.2   $(SHAREDIR)/libopencv_imgcodecs.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_imgproc.so ]; then ln -T $(SHAREDIR)/libopencv_imgproc.so.3.2 $(SHAREDIR)/libopencv_imgproc.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_java320.so ]; then ln -T $(SHAREDIR)/libopencv_java320.so $(SHAREDIR)/libopencv_java320.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_ml.so ]; then ln -T $(SHAREDIR)/libopencv_ml.so.3.2 $(SHAREDIR)/libopencv_ml.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_objdetect.so ]; then ln -T $(SHAREDIR)/libopencv_objdetect.so.3.2 $(SHAREDIR)/libopencv_objdetect.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_photo.so ]; then ln -T $(SHAREDIR)/libopencv_photo.so.3.2 $(SHAREDIR)/libopencv_photo.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_shape.so ]; then ln -T $(SHAREDIR)/libopencv_shape.so.3.2 $(SHAREDIR)/libopencv_shape.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_stitching.so ]; then ln -T $(SHAREDIR)/libopencv_stitching.so.3.2 $(SHAREDIR)/libopencv_stitching.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_superres.so ]; then ln -T $(SHAREDIR)/libopencv_superres.so.3.2 $(SHAREDIR)/libopencv_superres.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_video.so ]; then ln -T $(SHAREDIR)/libopencv_video.so.3.2 $(SHAREDIR)/libopencv_video.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_videoio.so ]; then ln -T $(SHAREDIR)/libopencv_videoio.so.3.2 $(SHAREDIR)/libopencv_videoio.so; fi
	if [ ! -f $(SHAREDIR)/libopencv_videostab.so ]; then ln -T $(SHAREDIR)/libopencv_videostab.so.3.2 $(SHAREDIR)/libopencv_videostab.so; fi
