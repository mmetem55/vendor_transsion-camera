.class public Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;
.super Ljava/lang/Object;
.source "BytedLicenseWrapper.java"

# interfaces
.implements Lcom/bytedance/labcv/licenselibrary/BytedLicenseInterface;


# instance fields
.field private _provider:Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;

.field private mNativeWrapperPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "effect"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "licenseWrapper_jni: library load!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: licenseWrapper_jni Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->mNativeWrapperPtr:J

    .line 22
    iput-object p2, p0, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->_provider:Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;

    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->nativeGetInstanceWithParam(Ljava/util/HashMap;)I

    return-void
.end method

.method private native nativeClearParams()V
.end method

.method private native nativeGetInstanceWithParam(Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private native nativeGetLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation
.end method

.method private native nativeGetParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeSetParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeUpdateLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation
.end method


# virtual methods
.method public clearParams()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->nativeClearParams()V

    return-void
.end method

.method public getLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->nativeGetLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I

    move-result p0

    return p0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->nativeGetParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerHttpProvider(Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->_provider:Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->nativeSetParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/licenselibrary/BytedLicenseWrapper;->nativeUpdateLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I

    move-result p0

    return p0
.end method
