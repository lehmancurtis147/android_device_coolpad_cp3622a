target_include_directories(/home/curts/android/aosp/device/coolpad/cp3622a/camera/QCamera/)

add_executable(QCamera
	src/QCameraHAL.cpp
	src/QCameraHWI.cpp
	src/QCameraHWI_Mem.cpp
	src/QCameraHWI_Parm.cpp
	src/QCameraHWI_Preview.cpp
	src/QCameraHWI_Rdi.cpp
	src/QCameraHWI_Record.cpp
	src/QCameraHWI_Still.cpp
	src/QCameraParameters.cpp
	src/QCameraStream.cpp
	include/QCameraHAL.h
	include/QCameraHWI.h
	include/QCameraHWI_Mem.h
	include/QCameraStream.h
)
