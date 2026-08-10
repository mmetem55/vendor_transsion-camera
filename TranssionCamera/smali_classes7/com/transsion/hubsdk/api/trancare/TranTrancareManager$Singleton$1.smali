.class Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton$1;
.super Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.source "TranTrancareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
        "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 814
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    .locals 1

    const-string p0, "33101"

    .line 817
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 818
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubTrancareManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;-><init>()V

    return-object p0

    .line 821
    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranAospTrancareManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareManager;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 814
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton$1;->create()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object p0

    return-object p0
.end method
