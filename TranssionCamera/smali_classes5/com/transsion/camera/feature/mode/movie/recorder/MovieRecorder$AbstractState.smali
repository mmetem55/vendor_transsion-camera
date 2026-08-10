.class abstract Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
.super Ljava/lang/Object;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteAllSections()V
    .locals 0

    return-void
.end method

.method public deleteLatestSection()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 9

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->requestTexturePair(II)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 273
    aget v8, p1, v0

    const/4 v1, 0x1

    .line 274
    aget p1, p1, v1

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Z

    move-result v7

    const/4 v6, 0x0

    move v2, p2

    move v3, v8

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->renderOesTextureTo2DTexture(IIIIIZ)V

    .line 276
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 279
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object p2

    invoke-virtual {p2, v8, p1, p3, p4}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->renderBaseFilter(IIII)I

    move-result p2

    if-nez p2, :cond_1

    .line 281
    invoke-virtual {p0, p1, v8, p3, p4}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->onDraw(IIII)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, -0x4

    if-ne p2, v1, :cond_2

    .line 283
    invoke-virtual {p0, v8, p1, p3, p4}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->onDraw(IIII)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method final entry()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->onLeave()V

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$002(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->onEntry()V

    .line 223
    :cond_2
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v1, "state change finish"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMovieFeed()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(IIII)Z
    .locals 6

    const/4 p2, 0x0

    .line 291
    invoke-static {p2, p2, p4, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->drawTexture(IIIII)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onEntry()V
    .locals 0

    return-void
.end method

.method protected onLeave()V
    .locals 0

    return-void
.end method

.method public produceMovie()V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;->onProduceFailed()V

    return-void
.end method

.method public releaseRenderResource()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->clearEffectResource()V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->destroy()V

    .line 299
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "releaseRenderResource finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public abstract resetTheme()V
.end method

.method public startRecord()V
    .locals 0

    return-void
.end method

.method public stopRecord()V
    .locals 0

    return-void
.end method

.method public updateEffect()V
    .locals 1

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->updateFilterEffect()V

    .line 304
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "updateEffect finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateSize(II)V
    .locals 0

    return-void
.end method

.method public updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 2

    .line 236
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTheme at illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
