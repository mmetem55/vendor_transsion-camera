.class public Lcom/transsion/athena/data/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/data/f$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(JLjava/util/List;JJIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/f$a;",
            ">;JJIIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/transsion/athena/data/f;->a:J

    .line 3
    iput-object p3, p0, Lcom/transsion/athena/data/f;->b:Ljava/util/List;

    .line 4
    iput-wide p4, p0, Lcom/transsion/athena/data/f;->c:J

    .line 5
    iput-wide p6, p0, Lcom/transsion/athena/data/f;->d:J

    .line 6
    iput p8, p0, Lcom/transsion/athena/data/f;->e:I

    .line 7
    iput p9, p0, Lcom/transsion/athena/data/f;->f:I

    .line 8
    iput-boolean p10, p0, Lcom/transsion/athena/data/f;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/transsion/athena/data/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget-wide v3, p0, Lcom/transsion/athena/data/f;->a:J

    check-cast p1, Lcom/transsion/athena/data/f;

    iget-wide p0, p1, Lcom/transsion/athena/data/f;->a:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/data/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",eventStartId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/data/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",eventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/athena/data/f;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
