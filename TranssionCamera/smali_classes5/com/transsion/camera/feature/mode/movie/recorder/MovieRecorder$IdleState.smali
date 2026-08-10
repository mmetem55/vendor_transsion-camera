.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 357
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "IdleState"

    .line 358
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method

.method private checkLeave()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private tryLeave()V
    .locals 8

    .line 408
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->checkLeave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1602(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    new-instance v7, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    move-result-object v3

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v4

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v5

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;II)V

    invoke-static {v0, v7}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$702(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->installFilterEffect()V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->updateFilterEffect()V

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onEntry()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1102(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1202(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1302(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    return-void
.end method

.method public releaseRenderResource()V
    .locals 1

    .line 380
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "Idle State do not need releaseRenderResource"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetTheme()V
    .locals 1

    .line 375
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "Idle State do not need reset"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateEffect()V
    .locals 0

    return-void
.end method

.method public updateSize(II)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1402(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1502(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->tryLeave()V

    return-void
.end method

.method public updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 3

    .line 385
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTheme id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1302(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;->tryLeave()V

    return-void
.end method
