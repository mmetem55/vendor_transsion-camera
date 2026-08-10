.class Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/webview/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInvocation"
.end annotation


# instance fields
.field private _jsString:Ljava/lang/String;

.field private _webView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/unity3d/splash/services/core/webview/WebView;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/webview/WebView;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;->this$0:Lcom/unity3d/splash/services/core/webview/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebView;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error while processing JavaScriptString"

    invoke-static {v0, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p0, "Could not process JavaScript, the string is NULL"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    return-void
.end method
