.class public Lcom/unity3d/splash/services/core/webview/WebViewApp;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppChromeClient;,
        Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppClient;
    }
.end annotation


# static fields
.field private static _conditionVariable:Landroid/os/ConditionVariable;

.field private static _currentApp:Lcom/unity3d/splash/services/core/webview/WebViewApp;


# instance fields
.field private _configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

.field private _initialized:Z

.field private _webAppLoaded:Z

.field private _webView:Lcom/unity3d/splash/services/core/webview/WebView;


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_initialized:Z

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setConfiguration(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->setClassTable([Ljava/lang/Class;)V

    new-instance p1, Lcom/unity3d/splash/services/core/webview/WebView;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/unity3d/splash/services/core/webview/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppClient;-><init>(Lcom/unity3d/splash/services/core/webview/WebViewApp;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppChromeClient;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/splash/services/core/webview/WebViewApp;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static create(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
    .locals 2

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Cannot call create() from main thread!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_currentApp:Lcom/unity3d/splash/services/core/webview/WebViewApp;

    return-object v0
.end method

.method private invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "javascript:window."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invoking javascript: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/splash/services/core/webview/WebView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/webview/WebView;->invokeJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentApp(Lcom/unity3d/splash/services/core/webview/WebViewApp;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_currentApp:Lcom/unity3d/splash/services/core/webview/WebViewApp;

    return-void
.end method


# virtual methods
.method public getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-object p0
.end method

.method public getWebView()Lcom/unity3d/splash/services/core/webview/WebView;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    return-object p0
.end method

.method public isWebAppLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    return p0
.end method

.method public varargs sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "sendEvent ignored because web app is not loaded"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    array-length p1, p3

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "nativebridge"

    const-string p2, "handleEvent"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Error while sending event to WebView"

    invoke-static {p1, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    return v1
.end method

.method public setConfiguration(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-void
.end method

.method public setWebAppInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_initialized:Z

    sget-object p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public setWebAppLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    return-void
.end method

.method public setWebView(Lcom/unity3d/splash/services/core/webview/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    return-void
.end method
