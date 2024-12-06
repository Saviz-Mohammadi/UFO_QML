#include "main.hpp"

#ifdef QT_DEBUG
    #include "logger.hpp"
#endif


int main(int argc, char *argv[])
{
    QGuiApplication application(argc, argv);
    QQmlApplicationEngine engine;

    registerTypes();
    setupThemeSystem();
    chooseFirstTheme();
    readCustomFonts(application);
    setGlobalFont(application);

    // You may face issues when using Wayland.
    QGuiApplication::setWindowIcon(QIcon("./resources/icons/Application icons/ufo.png"));

    // Load main.qml to start the engine. (Relative path from executable)
    engine.load("./resources/qml/main.qml");

    // Launch Event loop.
    return application.exec();
}


// You can register your C++ types to be visible to QML here.
void registerTypes()
{
    qmlRegisterSingletonType<AppTheme>("AppTheme", 1, 0, "AppTheme", &AppTheme::qmlInstance);
}

void setupThemeSystem()
{
    AppTheme *appTheme = AppTheme::cppInstance();

    appTheme->addThemes("./resources/json/themes");
}

void chooseFirstTheme()
{
    AppTheme *appTheme = AppTheme::cppInstance();

    QString lastUsedThemeKey = appTheme->getCachedTheme();


    if(!lastUsedThemeKey.isEmpty())
    {
        appTheme->loadColorsFromTheme(lastUsedThemeKey);

        return;
    }

    appTheme->loadColorsFromTheme("ufo_light");
}

void readCustomFonts(const QGuiApplication &application)
{
    // Path to font files.
    QStringList fontPaths;

    fontPaths << "./resources/fonts/Titillium_Web/TitilliumWeb-Black.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-Bold.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-BoldItalic.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-ExtraLight.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-ExtraLightItalic.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-Italic.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-Light.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-LightItalic.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-Regular.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-SemiBold.ttf"
              << "./resources/fonts/Titillium_Web/TitilliumWeb-SemiBoldItalic.ttf";

    // Looping through each font file.
    foreach (const QString &fontPath, fontPaths)
    {
        int fontId = QFontDatabase::addApplicationFont(fontPath);

        if (fontId == -1)
        {
#ifdef QT_DEBUG
            QString message("Failed to load font file: %1");

            message = message.arg(
                fontPath
            );

            logger::log(logger::LOG_LEVEL::DEBUG, "N/A", Q_FUNC_INFO, message);
#endif
        }
    }
}

void setGlobalFont(const QGuiApplication &application)
{
    // The name is automatically set by Qt and depends on the metadata of the file.
    // Refer to Google Fonts to find out the correct name to use.
    QString fontFamilyName = "Titillium Web";


    // Check if the font family is available.
    if (QFontDatabase::families().contains(fontFamilyName))
    {
        // Font family is available, use it
        QFont customFont(

            fontFamilyName,
            10
        );

        QGuiApplication::setFont(customFont);
    }

    else
    {
#ifdef QT_DEBUG
        QString message("Font family %1 is not available.");

        message = message.arg(
            fontFamilyName
        );

        logger::log(logger::LOG_LEVEL::DEBUG, "N/A", Q_FUNC_INFO, message);
#endif
    }
}
