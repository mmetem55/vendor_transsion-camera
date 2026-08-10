.class public Lcom/opensource/svgaplayer/utils/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pools.kt\ncom/opensource/svgaplayer/utils/Pools$SimplePool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The max pool size must be > 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isInPool(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 92
    iget-object v3, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 70
    iget v0, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 72
    iget-object v3, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 73
    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    .line 74
    iput v0, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPoolSize:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPoolSize:I

    iget-object v2, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 83
    aput-object p1, v2, v0

    add-int/2addr v0, v1

    .line 84
    iput v0, p0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->mPoolSize:I

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already in the pool!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
