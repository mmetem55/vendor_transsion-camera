.class public Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;
.super Ljava/lang/Object;
.source "TranVerifyKeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranVerifyKeyManager"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;

.field private static sThubService:Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/verifykey/ITranVerifyKeyManagerAdapter;
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 39
    sget-object p0, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubVerifyKeyManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object p0, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->sThubService:Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->sThubService:Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;

    :cond_0
    return-object p0

    .line 42
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospVerifyKeyManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object p0, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->sAospService:Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->sAospService:Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;

    :cond_2
    return-object p0
.end method

.method public static verify(Landroid/content/Context;)I
    .locals 1

    const-string v0, "33101"

    .line 33
    invoke-static {v0}, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/verifykey/ITranVerifyKeyManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/verifykey/ITranVerifyKeyManagerAdapter;->verify(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
