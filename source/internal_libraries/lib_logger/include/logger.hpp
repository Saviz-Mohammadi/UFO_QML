#ifndef LOGGER_H
#define LOGGER_H

#include <QObject>
#include <QDebug>
#include <QChar>
#include <QTextStream>
#include <QString>
#include <QtTypes>

/*
 * Currently, the Logger class uses Qt debugging tools. In future I could
 * migrate to another library such as spdlog.
*/
class Logger : public QObject
{
    Q_OBJECT

    // Constructors, Initializers, ShutDown, Destructor
public:
    explicit Logger(QObject *parent = nullptr, const QString& name = "No name");
    ~Logger();

    // Fields
private:
    static QChar m_Seperator;
    static quint8 m_Repeat;

    // PUBLIC Methods
public:
    static void logDebug(const QString &objectName = "No name", const QString &functionInformation = "No info", const QString &message = "No message");
    static void logInfo(const QString &objectName = "No name", const QString &functionInformation = "No info", const QString &message = "No message");
    static void logWarning(const QString &objectName = "No name", const QString &functionInformation = "No info", const QString &message = "No message");
    static void logCritical(const QString &objectName = "No name", const QString &functionInformation = "No info", const QString &message = "No message");
    static void logFatal(const QString &objectName = "No name", const QString &functionInformation = "No info", const QString &message = "No message");

    // PUBLIC Setters
public:
    static void setSeperator(const QChar &newSeperator);
    static void setRepeat(quint16 newRepeat);
};

#endif // LOGGER_H
