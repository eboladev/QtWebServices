#ifndef QTWEBVIEW_H
#define QTWEBVIEW_H

#include <QtCore/QtCore>
#include <QtGui/QtGui>

class QtWebView : public QObject
{
Q_OBJECT
public:
    QtWebView(QObject *parent = 0);
    ~QtWebView();
public:
    // QQuickWebEngineView API:
    Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)
    Q_PROPERTY(QImage icon READ icon NOTIFY iconChanged)
    Q_PROPERTY(bool loading READ isLoading NOTIFY loadingStateChanged)
//    Q_PROPERTY(int loadProgress READ loadProgress NOTIFY loadProgressChanged)
    Q_PROPERTY(QString title READ title NOTIFY titleChanged)
    Q_PROPERTY(bool canGoBack READ canGoBack NOTIFY loadingStateChanged)
    Q_PROPERTY(bool canGoForward READ canGoForward NOTIFY loadingStateChanged)
//    Q_PROPERTY(bool inspectable READ inspectable WRITE setInspectable)
    Q_ENUMS(LoadStatus);
//    Q_ENUMS(ErrorDomain);

public:
    QUrl url() const;
    void setUrl(const QUrl&url);
    QImage icon() const;
    bool isLoading() const;
//    int loadProgress() const;
    QString title() const;
    bool canGoBack() const;
    bool canGoForward() const;
    bool inspectable() const;
    void setInspectable(bool);

    enum LoadStatus {
        LoadStartedStatus,
        LoadStoppedStatus,
        LoadSucceededStatus,
        LoadFailedStatus
    };
/*
    enum ErrorDomain {
         NoErrorDomain,
         InternalErrorDomain,
         ConnectionErrorDomain,
         CertificateErrorDomain,
         HttpErrorDomain,
         FtpErrorDomain,
         DnsErrorDomain
    };
*/
public Q_SLOTS:
    void goBack();
    void goForward();
    void reload();
    void stop();

Q_SIGNALS:
    void titleChanged();
    void urlChanged();
    void iconChanged();
    void loadingStateChanged(LoadStatus loadStatus);
    void loadProgressChanged();

public: // ye olde API:
    void load(const QUrl &url);
    void *nativeView();
Q_SIGNALS:
    void loadStarted();
    void loadFinished(bool ok);
private:
    void *webView;
};

#endif
