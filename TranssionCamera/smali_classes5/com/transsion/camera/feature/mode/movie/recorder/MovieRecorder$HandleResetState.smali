.class abstract Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleResetState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onEntry()V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->onSubEntry()V

    :goto_0
    return-void
.end method

.method protected final onLeave()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->onSubLeave()V

    return-void
.end method

.method protected onSubEntry()V
    .locals 0

    return-void
.end method

.method protected onSubLeave()V
    .locals 0

    return-void
.end method

.method public final resetTheme()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method
