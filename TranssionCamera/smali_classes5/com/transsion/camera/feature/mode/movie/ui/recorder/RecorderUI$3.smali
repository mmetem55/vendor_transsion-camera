.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProduceFailed()V
    .locals 3

    .line 256
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onProduceFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method public onProduceFinished(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V
    .locals 3

    .line 243
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProduceFinished info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 p1, 0x6

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieOperator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/movie/IMovieOperator;->reviewMovie(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1100(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    :goto_0
    return-void
.end method

.method public onProduceStarted()V
    .locals 3

    .line 234
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onProduceStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    .line 238
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$900(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/movie/R$string;->movie_producing:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    const/16 v2, 0x64

    .line 235
    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method
