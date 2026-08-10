.class public Lathena/f0;
.super Lathena/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lathena/x<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private d:J

.field private e:Ljava/io/File;

.field private f:Lcom/transsion/athena/config/data/model/b;


# direct methods
.method public constructor <init>(JLjava/io/File;Lcom/transsion/athena/config/data/model/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lathena/x;-><init>()V

    .line 2
    iput-wide p1, p0, Lathena/f0;->d:J

    .line 3
    iput-object p3, p0, Lathena/f0;->e:Ljava/io/File;

    .line 4
    iput-object p4, p0, Lathena/f0;->f:Lcom/transsion/athena/config/data/model/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lathena/f0;->e:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lathena/f0;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lathena/f0;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "upload"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lathena/f0;->e:Ljava/io/File;

    .line 5
    sget v2, Lathena/y;->$r8$clinit:I

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Lathena/p;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lathena/p;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Lathena/p;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "\n"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object v0, v1

    .line 110
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 111
    iget-wide v3, p0, Lathena/f0;->d:J

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v5, p0, Lathena/f0;->f:Lcom/transsion/athena/config/data/model/b;

    invoke-static {v3, v4, v0, v2, v5}, Lathena/y;->a(J[BILcom/transsion/athena/config/data/model/b;)Lathena/d0;

    move-result-object v0

    .line 112
    iget v0, v0, Lathena/d0;->a:I

    if-eqz v0, :cond_2

    .line 113
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PostEventFileTask requestByPost error"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Lathena/f0;->e:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 118
    invoke-static {v0}, Lathena/y;->b(Ljava/io/File;)Z

    move-result v0

    .line 119
    sget-object v3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lathena/f0;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " PostEventFileTask lines:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", deleteFile:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lathena/f0;->e:Ljava/io/File;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lathena/f0;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lathena/f0;->e:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lathena/f0;

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lathena/f0;->e:Ljava/io/File;

    if-eqz p0, :cond_1

    .line 3
    check-cast p1, Lathena/f0;

    iget-object p1, p1, Lathena/f0;->e:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
