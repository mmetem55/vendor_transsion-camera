.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->deleteClick(Landroid/view/View;)V
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

    .line 630
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->deleteLatestSection()I

    move-result v0

    if-ltz v0, :cond_0

    .line 635
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$702(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;I)I

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$800(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    .line 638
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteClick leftSectionNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRecordedNumber: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    .line 639
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$700(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 638
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
