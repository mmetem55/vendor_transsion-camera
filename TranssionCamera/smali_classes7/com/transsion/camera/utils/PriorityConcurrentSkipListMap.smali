.class public Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
.super Ljava/util/concurrent/ConcurrentSkipListMap;
.source "PriorityConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap$1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap$1;-><init>(Z)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public static getPriorityByKey(Ljava/lang/String;)I
    .locals 1

    const-string v0, "-"

    .line 95
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
