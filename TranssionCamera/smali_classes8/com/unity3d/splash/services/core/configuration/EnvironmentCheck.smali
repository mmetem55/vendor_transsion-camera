.class public Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;
.super Ljava/lang/Object;


# direct methods
.method private static hasJavascriptInterface(Ljava/lang/reflect/Method;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    instance-of v3, v3, Landroid/webkit/JavascriptInterface;

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isEnvironmentOk()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->testProGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->testCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static testCacheDirectory()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Unity Ads cache directory check OK"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Unity Ads cache directory check fail: no working cache directory available"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static testProGuard()Z
    .locals 8

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeInterface;

    const-string v4, "handleInvocation"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "handleCallback"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v2

    aput-object v0, v6, v1

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v4}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unity Ads ProGuard check OK"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "Unity Ads ProGuard check fail: missing @JavascriptInterface annotations in Unity Ads web bridge"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown exception during Unity Ads ProGuard check: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    return v1

    :catch_1
    move-exception v0

    const-string v1, "Unity Ads ProGuard check fail: Unity Ads web bridge methods not found"

    :goto_0
    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    :catch_2
    move-exception v0

    const-string v1, "Unity Ads ProGuard check fail: Unity Ads web bridge class not found"

    goto :goto_0
.end method
