#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>//设置字体
#include <QApplication>//注意头文件,折线图
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc,argv);//这是第二个修改的地方，折线图
//    QGuiApplication app(argc, argv);

    //设置系统默认字体
    int fontId =
            QFontDatabase
            ::addApplicationFont(":/fonts/NotoSansCJKsc-Regular.otf");
    QStringList fontFamilies = QFontDatabase::applicationFontFamilies(fontId);
    QFont font;
    font.setFamily("Noto Sans CJK SC Regular");//设置全局字体
    app.setFont(font);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
