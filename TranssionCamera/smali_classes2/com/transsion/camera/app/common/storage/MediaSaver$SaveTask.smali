.class Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/MediaSaver;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/MediaSaver;Lcom/transsion/camera/app/common/storage/MediaSaver$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;-><init>(Lcom/transsion/camera/app/common/storage/MediaSaver;)V

    return-void
.end method

.method private hasRequestInQueue()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$210(Lcom/transsion/camera/app/common/storage/MediaSaver;)I

    const/4 p0, 0x0

    .line 69
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 71
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [doInBackground] begin queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->hasRequestInQueue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/storage/SaveRequest;

    .line 84
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v2}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/SaveRequest;->process()I

    move-result p1

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [doInBackground] update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mMediaSaverListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz v2, :cond_1

    .line 95
    :try_start_1
    instance-of v1, v2, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;

    if-eqz v1, :cond_0

    .line 96
    check-cast v2, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;->onFileSaved(Landroid/net/Uri;I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;->onFileSaved(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    goto :goto_0

    .line 88
    :cond_2
    :try_start_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [doInBackground] end queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
