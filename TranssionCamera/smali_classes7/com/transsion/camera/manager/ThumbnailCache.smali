.class public Lcom/transsion/camera/manager/ThumbnailCache;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;,
        Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThumbnailListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/manager/ThumbnailCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mBitmapMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/manager/ThumbnailCache$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/manager/ThumbnailCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/manager/ThumbnailCache;
    .locals 1

    .line 50
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache$InstanceHolder;->access$100()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addThumbnailListener(Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cache(ILandroid/graphics/Bitmap;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache bitmapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mBitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 62
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get bitmapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBitmapMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mBitmapMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mBitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mBitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 83
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFileSaved mThumbnailListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;

    .line 85
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;->onThumbnailUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeThumbnailListener(Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailCache;->mThumbnailListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
