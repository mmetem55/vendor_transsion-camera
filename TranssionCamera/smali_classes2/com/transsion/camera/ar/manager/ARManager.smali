.class public Lcom/transsion/camera/ar/manager/ARManager;
.super Ljava/lang/Object;
.source "ARManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ar/manager/ARManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ar/manager/ARManager$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/ar/manager/ARManager;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ar/manager/ARManager;->init(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 5

    .line 34
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->initResource(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->init(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ColorConstant;->init(Landroid/content/Context;)V

    .line 39
    sget-object p0, Lcom/transsion/camera/ar/manager/ARManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the resource cost is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/PreLoader;->preHandleData(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
