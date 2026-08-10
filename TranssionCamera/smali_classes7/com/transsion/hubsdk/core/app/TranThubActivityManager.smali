.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.super Ljava/lang/Object;
.source "TranThubActivityManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivityManager"


# instance fields
.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/app/ITranActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    const-string v0, "activity"

    .line 41
    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method


# virtual methods
.method protected setService(Lcom/transsion/hubsdk/app/ITranActivityManager;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 50
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startTNE fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
