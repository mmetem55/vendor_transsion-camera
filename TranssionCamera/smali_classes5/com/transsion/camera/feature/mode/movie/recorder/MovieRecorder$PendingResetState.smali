.class abstract Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PendingResetState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public resetTheme()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$802(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Z)Z

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    return-void
.end method
