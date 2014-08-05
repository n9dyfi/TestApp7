#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeContext>
#include "qmlapplicationviewer.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QString iconPrefix = "icon-m-messaging-smiley-";
    QString iconNames = "angry;cool;cry;evil;grin;happy;heart;kiss;lips-sealed;sad;sarcastic;skeptical;sleepy;surprised;tongue;very-happy;wink;worried";
    QString iconSelected = "angry";

    QStringList iconList = iconNames.split(";");

    QmlApplicationViewer viewer;

    // This is equivalent to QML: property string iconPrefix: "icon-m-messaging-smiley-"
    viewer.rootContext()->setContextProperty("iconPrefix",iconPrefix);
    viewer.rootContext()->setContextProperty("iconDefault",iconSelected);
    viewer.rootContext()->setContextProperty("iconList",iconList);

    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/TestApp7/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
