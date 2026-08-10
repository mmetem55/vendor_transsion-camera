.class public Lathena/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lathena/h;


# instance fields
.field private b:[B

.field public c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 10
    iget-boolean v0, p0, Lathena/h;->c:Z

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lathena/h;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    iput-boolean v0, p0, Lathena/h;->c:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lathena/h;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 22
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lathena/h;->c:Z

    return p0
.end method

.method public static b()Lathena/h;
    .locals 2

    .line 1
    sget-object v0, Lathena/h;->a:Lathena/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lathena/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lathena/h;->a:Lathena/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lathena/h;

    invoke-direct {v1}, Lathena/h;-><init>()V

    sput-object v1, Lathena/h;->a:Lathena/h;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lathena/h;->a:Lathena/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lathena/h;->d:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lathena/h;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lathena/h;->d:Ljava/lang/String;

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lathena/h;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "remote_config.cfg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lathena/h;->e:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 9
    iput-object p1, p0, Lathena/h;->b:[B

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lathena/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lathena/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lathena/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    :try_start_0
    iget-object v1, p0, Lathena/h;->b:[B

    invoke-static {v0, p1, v1}, Lathena/q;->a(Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    new-instance v1, Lcom/transsion/ga/d;

    const-string v2, "bufferSave"

    invoke-direct {v1, v2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object p0, p0, Lathena/h;->e:Ljava/lang/String;

    invoke-static {p0}, Lathena/y;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 23
    :catch_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lathena/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lathena/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lathena/h;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v2, p0, Lathena/h;->b:[B

    invoke-static {v0, v2}, Lathena/q;->a(Ljava/io/File;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 10
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "e"

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "pwd"

    .line 12
    :try_start_3
    iget-object p0, p0, Lathena/h;->b:[B

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/c;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string p0, "len"

    .line 13
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    new-instance p0, Lcom/transsion/ga/d;

    const-string v4, "bufferRead"

    invoke-direct {p0, v4, v3}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    .line 16
    invoke-static {v0}, Lathena/y;->b(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 18
    :catch_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method
