.class public Lcom/tencent/youtu/xsdk/YTCommonInterface;
.super Ljava/lang/Object;
.source "YTCommonInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static initAuthByString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "license_string",
            "secret_key"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/youtu/xsdk/YTCommonInterface;->nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "license_string",
            "secret_key"
        }
    .end annotation
.end method
