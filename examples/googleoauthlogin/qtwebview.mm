#include <Cocoa/Cocoa.h>
#include <WebKit/WebView.h>

#include <qtmacconversion.h>
#include "qtwebview.h"

@interface QtFrameLoadDelegate : NSObject {
    QtWebView *qtWebView;
}
    - (QtFrameLoadDelegate *)initWithQtWebView:(QtWebView *)view;
@end

@implementation QtFrameLoadDelegate

- (QtFrameLoadDelegate *)initWithQtWebView:(QtWebView *)view;
{
    qtWebView = view;
    return self;
}

- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{
    emit qtWebView->loadStarted();
}

- (void)webView:(WebView *)sender didCommitLoadForFrame:(WebFrame *)frame
{

}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    emit qtWebView->loadFinished(true);
}

@end

QtWebView::QtWebView(QObject *parent)
:QObject(0)
{
    NSRect frame = NSMakeRect(0.0, 0.0, 400, 400);
    WebView *myWebView = [[WebView alloc] initWithFrame:frame frameName:@"Test Frame" groupName:nil];

    [myWebView setFrameLoadDelegate : [[QtFrameLoadDelegate alloc] initWithQtWebView : this]];

    webView = myWebView;
}

void QtWebView::load(const QUrl &url)
{
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:toNSURL(url)]];
}

QString QtWebView::title() const
{
    return toQString([webView mainFrameTitle]);
}

void *QtWebView::nativeView()
{
    return webView;
}
