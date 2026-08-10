.class interface abstract Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Command;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Command"
.end annotation


# virtual methods
.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
