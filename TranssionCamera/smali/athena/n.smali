.class public Lathena/n;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lathena/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/athena/data/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/transsion/core/utils/AppUtil;->getVersionName()Ljava/lang/String;

    .line 3
    invoke-static {}, Lathena/k0;->b()Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/transsion/athena/data/a;

    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "athena.db"

    invoke-direct {v0, v1, v2}, Lcom/transsion/athena/data/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    .line 5
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lathena/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILcom/transsion/athena/data/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsion/athena/data/b<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 555
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;ILcom/transsion/athena/data/b;)I

    move-result p0
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 556
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 602
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    const/4 p0, -0x1

    return p0
.end method

.method public a(JJLjava/lang/String;)I
    .locals 7

    .line 372
    :try_start_0
    iget-object v0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v1, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;JJLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 373
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 419
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/transsion/athena/data/Track;)I
    .locals 4

    .line 271
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 276
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/data/Track;I)I

    move-result p0
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 277
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 323
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    return v2
.end method

.method public a(Ljava/util/ArrayList;Lcom/transsion/athena/data/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/athena/data/Track;",
            ">;",
            "Lcom/transsion/athena/data/b<",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .line 324
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Ljava/util/List;Lcom/transsion/athena/data/b;)I

    move-result p0
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 325
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 371
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    const/4 p0, 0x0

    return p0
.end method

.method public a(JJLjava/lang/String;II)Lcom/transsion/athena/data/f;
    .locals 9

    move-object v0, p0

    .line 420
    :try_start_0
    iget-object v0, v0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v1, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;JJLjava/lang/String;II)Lcom/transsion/athena/data/f;

    move-result-object v0
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 421
    sget v1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 467
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 3

    .line 843
    iget-object v0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    invoke-virtual {v0}, Lcom/transsion/athena/data/a;->j()V

    .line 845
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lathena/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/athena/config/data/model/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lathena/y;->a(Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lathena/n;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/f;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lathena/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 848
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(JLathena/n$a;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lathena/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-static {v0, p1, p2}, Lathena/y;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "f_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "r_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v1, v4

    goto :goto_3

    .line 10
    :cond_2
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    .line 19
    new-instance v2, Lathena/f0;

    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lathena/a;->b(J)Lcom/transsion/athena/config/data/model/b;

    move-result-object v3

    invoke-direct {v2, p1, p2, v1, v3}, Lathena/f0;-><init>(JLjava/io/File;Lcom/transsion/athena/config/data/model/b;)V

    invoke-interface {p3, v2}, Lathena/n$a;->a(Lathena/x;)V

    goto :goto_0

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lathena/n;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/f;->l:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 28
    :try_start_0
    invoke-static {p0}, Lathena/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 30
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V
    .locals 1

    .line 127
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/config/data/model/TidConfigBean;)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 174
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/config/data/model/a;Z)V
    .locals 1

    .line 79
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/config/data/model/a;Z)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 126
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/data/AppIdData;)V
    .locals 1

    .line 175
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/data/AppIdData;)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 222
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/data/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/b<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;>;)V"
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    invoke-virtual {p0, p1}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/b;)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 78
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 747
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 748
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 794
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;)V"
        }
    .end annotation

    .line 223
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 270
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;I)V"
        }
    .end annotation

    .line 651
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 652
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 698
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/transsion/athena/data/b<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/data/g;",
            ">;>;)V"
        }
    .end annotation

    .line 795
    :try_start_0
    iget-object v0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v1, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/b;)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 796
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 842
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 699
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 700
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 746
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;ZLcom/transsion/athena/data/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/transsion/athena/data/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lathena/n;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/f;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 469
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    invoke-static {p2}, Lathena/y;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 472
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "f_"

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " "

    const-string v4, "cleanupEvents deleteFile "

    if-nez v2, :cond_2

    const-string v2, "r_"

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 482
    :cond_1
    invoke-static {v0}, Lathena/y;->b(Ljava/io/File;)Z

    move-result v0

    .line 483
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v2, 0x2d

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 485
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-static {v0}, Lathena/y;->b(Ljava/io/File;)Z

    move-result v0

    .line 487
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 496
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lathena/n;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/f;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 497
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    :try_start_0
    invoke-static {p2}, Lathena/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 502
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 507
    :cond_4
    :goto_2
    :try_start_1
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object p2, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/athena/data/a;->b(Lcom/transsion/athena/data/a$b;Ljava/util/List;Lcom/transsion/athena/data/b;)V
    :try_end_1
    .catch Lcom/transsion/ga/d; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 508
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 554
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    :goto_3
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 603
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;I)Z
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 604
    sget p1, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 650
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/athena/data/a;->a(Z)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lathena/n;->a:Lcom/transsion/athena/data/a;

    sget-object v0, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p0, v0}, Lcom/transsion/athena/data/a;->a(Lcom/transsion/athena/data/a$b;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/transsion/ga/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    sget v0, Lcom/transsion/ga/d;->$r8$clinit:I

    .line 48
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    const/4 p0, 0x0

    return-object p0
.end method
