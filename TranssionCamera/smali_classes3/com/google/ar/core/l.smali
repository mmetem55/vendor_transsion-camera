.class final Lcom/google/ar/core/l;
.super Ljava/util/LinkedHashMap;
.source "FaceCache.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    .line 1
    invoke-direct {p0, v0, v1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
