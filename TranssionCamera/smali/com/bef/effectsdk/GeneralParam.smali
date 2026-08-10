.class public Lcom/bef/effectsdk/GeneralParam;
.super Ljava/lang/Object;
.source "GeneralParam.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/bef/effectsdk/GeneralParam;->nativeGetParamByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeGetParamByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeSetParamWithKey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetParams(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static setParamWithKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/bef/effectsdk/GeneralParam;->nativeSetParamWithKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/bef/effectsdk/GeneralParam;->nativeSetParams(Ljava/util/HashMap;)V

    return-void
.end method
