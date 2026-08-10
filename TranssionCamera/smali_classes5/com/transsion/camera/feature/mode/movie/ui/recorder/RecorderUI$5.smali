.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->deleteLongClick(Landroid/view/View;)Z
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

    .line 663
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->deleteAllSections()V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$702(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;I)I

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$800(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    .line 669
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "deleteLongClick confirm"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
