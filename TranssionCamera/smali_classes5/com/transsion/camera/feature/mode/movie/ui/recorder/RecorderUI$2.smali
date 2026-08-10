.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;


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

    .line 186
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordFailed(II)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordFailed index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$600(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 p2, 0x5e

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$300(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onRecordProgressUpdate(IJJ)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->updateProgress(J)V

    return-void
.end method

.method public onRecordStarted(IJ)V
    .locals 3

    .line 189
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordStarted index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$300(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0x5d

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->updateTotalDuration(J)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->updateProgress(J)V

    return-void
.end method

.method public onRecordStopped(I)V
    .locals 3

    .line 207
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordStopped index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$600(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$702(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;I)I

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$800(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0x5e

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$300(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
