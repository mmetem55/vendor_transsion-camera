.class public Lcom/transsion/camera/app/common/mode/AppUICache;
.super Ljava/lang/Object;
.source "AppUICache.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/mode/AppUICache;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/AppUICache;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 20
    new-instance v0, Lcom/transsion/camera/app/common/mode/AppUICache;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/AppUICache;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->sInstance:Lcom/transsion/camera/app/common/mode/AppUICache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cache(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cacheAppUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->sInstance:Lcom/transsion/camera/app/common/mode/AppUICache;

    iput-object p0, v0, Lcom/transsion/camera/app/common/mode/AppUICache;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method static clearCache()V
    .locals 2

    .line 34
    sget-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearAppUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->sInstance:Lcom/transsion/camera/app/common/mode/AppUICache;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/AppUICache;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public static getAppUI()Lcom/transsion/camera/app/common/IAppUI;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/camera/app/common/mode/AppUICache;->sInstance:Lcom/transsion/camera/app/common/mode/AppUICache;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/AppUICache;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object v0
.end method
