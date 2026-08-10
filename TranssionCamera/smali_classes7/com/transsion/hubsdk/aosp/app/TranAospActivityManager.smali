.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;
.super Ljava/lang/Object;
.source "TranAospActivityManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospActivityManager"

.field private static sActivityManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManagerExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

.field private mMethodGetService:Ljava/lang/reflect/Method;

.field private final mObserverMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.app.IActivityManager"

    .line 36
    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sClassName:Ljava/lang/Class;

    const-string v0, "android.app.ActivityManager"

    .line 37
    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mObserverMap:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 46
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mManagerExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mMethodGetService:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    .line 53
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sClassName:Ljava/lang/Class;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const/4 v5, 0x3

    aput-object v0, v3, v5

    const-string v0, "startTNE"

    invoke-static {v1, v0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mMethodGetService:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 59
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v7

    aput-object p5, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startTNE fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
