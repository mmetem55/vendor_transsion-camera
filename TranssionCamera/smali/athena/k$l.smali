.class Lathena/k$l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/athena/data/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->a(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/athena/data/b<",
        "Landroid/util/SparseArray<",
        "Lcom/transsion/athena/data/g;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lathena/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    const/4 p0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/g;

    .line 4
    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget v2, v0, Lcom/transsion/athena/data/g;->a:I

    const-string v3, "appid"

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/athena/data/g;->b:Ljava/lang/String;

    const-string v3, "date"

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    iget v2, v0, Lcom/transsion/athena/data/g;->c:I

    const-string v3, "count"

    .line 7
    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    iget v0, v0, Lcom/transsion/athena/data/g;->d:I

    const-string v2, "packet"

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    const/16 v1, 0x270f

    .line 9
    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v2

    const-string v3, "day_up_record"

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
