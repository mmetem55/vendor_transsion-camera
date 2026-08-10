.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;
.super Ljava/lang/Object;
.source "MovieTheme.java"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 3

    .line 156
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    check-cast p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$202(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$302(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Z)Z

    :cond_0
    return-void
.end method

.method public onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 0

    return-void
.end method

.method public onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    .locals 2

    .line 170
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 172
    :try_start_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$202(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 173
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$302(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Z)Z

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
