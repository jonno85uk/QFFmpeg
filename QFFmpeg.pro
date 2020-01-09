#-------------------------------------------------
#
#
#
#-------------------------------------------------

QT       += core gui widgets network

CONFIG   += app



SOURCES += main.cpp\
    mainwindow.cpp \
    QFFmpegPlayer.cpp \
    QFFmpegAudioDecoder.cpp \
    QFFmpegVideoDecoder.cpp \
    QOpenALEngine.cpp \
    QFFmpegGLWidget.cpp \
    QFFmpegClock.cpp \
    QFFmpegVideoRender.cpp

HEADERS  += mainwindow.h \
    QFFmpegPlayer.h \
    QFFmpegAudioDecoder.h \
    QFFmpegVideoDecoder.h \
    QOpenALEngine.h \
    QFFmpegGLWidget.h \
    QFFmpegClock.h \
    QFFmpegVideoRender.h

FORMS    += mainwindow.ui

win32:LIBS += -L$$PWD/ffmpeg/lib -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lpostproc -lswscale -lswresample
wine32:INCLUDEPATH += $$PWD/ffmpeg/include
win32:LIBS += -L$$PWD/openal/libs/Win32 -lOpenAL32
win32:INCLUDEPATH += $$PWD/openal/include/AL

unix:LIBS += -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lpostproc -lswscale -lswresample -lopenal


RESOURCES +=

DISTFILES +=
