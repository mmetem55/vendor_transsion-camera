.class final Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/transsion/camera/manager/ThumbnailCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/manager/ThumbnailCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/manager/ThumbnailCache;-><init>(Lcom/transsion/camera/manager/ThumbnailCache$1;)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;->sInstance:Lcom/transsion/camera/manager/ThumbnailCache;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/manager/ThumbnailCache;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;->sInstance:Lcom/transsion/camera/manager/ThumbnailCache;

    return-object v0
.end method
