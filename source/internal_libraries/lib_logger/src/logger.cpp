#include "logger.hpp"

QChar Logger::m_Seperator = QChar('-');
quint8 Logger::m_Repeat = 80;

// Constructors, Initializers, ShutDown, Destructor
// [[------------------------------------------------------------------------]]
// [[------------------------------------------------------------------------]]

Logger::Logger(QObject *parent, const QString& name)
    : QObject{parent}
{
    this->setObjectName(name);
}

Logger::~Logger()
{

}

// [[------------------------------------------------------------------------]]
// [[------------------------------------------------------------------------]]





// PUBLIC Methods
// [[------------------------------------------------------------------------]]
// [[------------------------------------------------------------------------]]

void Logger::logDebug(const QString &objectName, const QString &functionInformation, const QString &message)
{
    QString logOutput;
    QTextStream stream(&logOutput);

    stream << "\n" << QString(m_Seperator).repeated(m_Repeat)
           << "\n" << ">> Object Name : " << objectName
           << "\n" << ">> Function    : " << functionInformation
           << "\n" << ">> Message     : " << "\n"
           << "\n" << message
           << "\n" << QString(m_Seperator).repeated(m_Repeat) << "\n";

    qDebug().noquote() << logOutput.toUtf8().constData();
}

void Logger::logInfo(const QString &objectName, const QString &functionInformation, const QString &message)
{
    QString logOutput;
    QTextStream stream(&logOutput);

    stream << "\n" << QString(m_Seperator).repeated(m_Repeat)
           << "\n" << ">> Object Name : " << objectName
           << "\n" << ">> Function    : " << functionInformation
           << "\n" << ">> Message     : " << "\n"
           << "\n" << message
           << "\n" << QString(m_Seperator).repeated(m_Repeat) << "\n";

    qInfo().noquote() << logOutput.toUtf8().constData();
}

void Logger::logWarning(const QString &objectName, const QString &functionInformation, const QString &message)
{
    QString logOutput;
    QTextStream stream(&logOutput);

    stream << "\n" << QString(m_Seperator).repeated(m_Repeat)
           << "\n" << ">> Object Name : " << objectName
           << "\n" << ">> Function    : " << functionInformation
           << "\n" << ">> Message     : " << "\n"
           << "\n" << message
           << "\n" << QString(m_Seperator).repeated(m_Repeat) << "\n";

    qWarning().noquote() << logOutput.toUtf8().constData();
}

void Logger::logCritical(const QString &objectName, const QString &functionInformation, const QString &message)
{
    QString logOutput;
    QTextStream stream(&logOutput);

    stream << "\n" << QString(m_Seperator).repeated(m_Repeat)
           << "\n" << ">> Object Name : " << objectName
           << "\n" << ">> Function    : " << functionInformation
           << "\n" << ">> Message     : " << "\n"
           << "\n" << message
           << "\n" << QString(m_Seperator).repeated(m_Repeat) << "\n";

    qCritical().noquote() << logOutput.toUtf8().constData();
}

void Logger::logFatal(const QString &objectName, const QString &functionInformation, const QString &message)
{
    QString logOutput;
    QTextStream stream(&logOutput);

    stream << "\n" << QString(m_Seperator).repeated(m_Repeat)
           << "\n" << ">> Object Name : " << objectName
           << "\n" << ">> Function    : " << functionInformation
           << "\n" << ">> Message     : " << "\n"
           << "\n" << message
           << "\n" << QString(m_Seperator).repeated(m_Repeat) << "\n";

    qFatal().noquote() << logOutput.toUtf8().constData();
}

// [[------------------------------------------------------------------------]]
// [[------------------------------------------------------------------------]]





// PUBLIC Setters
// [[------------------------------------------------------------------------]]
// [[------------------------------------------------------------------------]]

void Logger::setSeperator(const QChar &newSeperator)
{
    if (m_Seperator == newSeperator)
    {
        return;
    }

    m_Seperator = newSeperator;
}

void Logger::setRepeat(quint16 newRepeat)
{
    if (m_Repeat == newRepeat)
    {
        return;
    }

    m_Repeat = newRepeat;
}

// [[------------------------------------------------------------------------]]
// [[------------------------------------------------------------------------]]
