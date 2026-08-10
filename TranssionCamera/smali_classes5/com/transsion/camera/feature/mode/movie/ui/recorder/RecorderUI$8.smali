.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->saveDraft()Z
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

    .line 975
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->deleteRecorded()V

    .line 985
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(I)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->resetTheme()V

    .line 979
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(I)V

    return-void
.end method
