.class public Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;
.super Ljava/lang/Object;
.source "SaveFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;,
        Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveFileTask"


# instance fields
.field private isProgressing:Z

.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/io/File;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

.field private mOnSaveListener:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetisProgressing(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->isProgressing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSaveListener(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mOnSaveListener:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisProgressing(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->isProgressing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->isProgressing:Z

    return-void
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    const-string v0, "Failed to close output stream"

    const-string v1, "Failed to close input stream"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 44
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    .line 49
    :goto_0
    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 50
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 61
    sget-object v2, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v2, 0x1

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p0, v3

    :goto_3
    move-object v3, v4

    goto :goto_8

    :catch_3
    move-exception p1

    move-object p0, v3

    :goto_4
    move-object v3, v4

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object p0, v3

    goto :goto_8

    :catch_4
    move-exception p1

    move-object p0, v3

    .line 53
    :goto_5
    :try_start_5
    sget-object v4, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    const-string v5, "Failed to copy file to new location"

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_1

    .line 58
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 61
    sget-object v3, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_6
    if-eqz p0, :cond_2

    .line 65
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_7
    return v2

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v3, :cond_3

    .line 58
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception v2

    .line 61
    sget-object v3, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_9
    if-eqz p0, :cond_4

    .line 65
    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception p0

    .line 68
    sget-object v1, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_4
    :goto_a
    throw p1
.end method

.method private createNewTask()Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask<",
            "Ljava/io/File;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 78
    iput-object v1, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mAsyncTask:Landroid/os/AsyncTask;

    .line 80
    :cond_0
    new-instance v0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;

    invoke-direct {v0, p0, v1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;-><init>(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask-IA;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method isProgressing()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->isProgressing:Z

    return p0
.end method

.method public varargs loadExecute([Ljava/io/File;)V
    .locals 3

    .line 90
    sget-object v0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----loadExecute---isProgressing-----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->isProgressing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->isProgressing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mOnSaveListener:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;

    if-eqz p0, :cond_1

    .line 93
    invoke-interface {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;->progressing()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->createNewTask()Landroid/os/AsyncTask;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnSaveListener(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;)Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->mOnSaveListener:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;

    return-object p0
.end method
