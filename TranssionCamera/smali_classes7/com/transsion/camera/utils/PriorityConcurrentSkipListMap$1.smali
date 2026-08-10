.class Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap$1;
.super Ljava/lang/Object;
.source "PriorityConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$increasing:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap$1;->val$increasing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "-"

    .line 40
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 42
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 44
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne v1, v2, :cond_0

    sub-int/2addr p1, p2

    return p1

    .line 50
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap$1;->val$increasing:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    return v3

    :cond_2
    if-le v1, v2, :cond_3

    move v3, p1

    :cond_3
    return v3
.end method
