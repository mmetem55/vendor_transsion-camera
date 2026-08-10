.class public Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;
.super Ljava/lang/Object;
.source "TemporaryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCacheMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TV;>;"
        }
    .end annotation
.end field

.field private mCapacity:I

.field private mIndex:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCacheMap:Landroid/util/SparseArray;

    .line 32
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCapacity:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCacheMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCacheMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCapacity:I

    if-lt v0, v2, :cond_2

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 47
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "This should not happen, index is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCacheMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCacheMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mCacheMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public size()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->mIndex:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    return p0
.end method
