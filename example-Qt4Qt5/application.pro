QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = application
TEMPLATE = app

CONFIG      += release qscintilla2

macx {
    QMAKE_POST_LINK = install_name_tool -change libqscintilla2.12.dylib $$[QT_INSTALL_LIBS]/libqscintilla2.12.dylib $(TARGET)
}

HEADERS      += mainwindow.h
SOURCES      += main.cpp mainwindow.cpp
RESOURCES    += application.qrc
INCLUDEPATH += C:\Users\julio\projects\libs\QScintilla-gpl-2.9\Qt4Qt5

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../Qt4Qt5/release/ -lqscintilla2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../Qt4Qt5/debug/ -lqscintilla2
else:unix: LIBS += -L$$PWD/../Qt4Qt5/ -lqscintilla2

INCLUDEPATH += $$PWD/../Qt4Qt5/release
DEPENDPATH += $$PWD/../Qt4Qt5/release
