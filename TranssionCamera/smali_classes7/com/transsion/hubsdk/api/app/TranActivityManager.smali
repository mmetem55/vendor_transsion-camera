.class public Lcom/transsion/hubsdk/api/app/TranActivityManager;
.super Ljava/lang/Object;
.source "TranActivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranActivityManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;
    .locals 1

    .line 375
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    :cond_0
    return-object p1

    .line 379
    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    :cond_2
    return-object p1
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 7

    const-string v0, "33101"

    .line 69
    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->startTNE(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method
