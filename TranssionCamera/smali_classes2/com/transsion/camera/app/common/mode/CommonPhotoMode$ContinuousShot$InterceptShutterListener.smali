.class final Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterceptShutterListener"
.end annotation


# instance fields
.field mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
            "TT;TD;>.ContinuousShot;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
            "TT;TD;>.ContinuousShot;)V"
        }
    .end annotation

    .line 1827
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1828
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .locals 0

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 1833
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->isShotting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1834
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->access$1500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "stop continuous shot when it is shotting"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1835
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->stopContinuousShot()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 0

    .line 1843
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->isShotting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1844
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->access$1500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "do nothing when it is shotting"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp(I)V
    .locals 0

    return-void
.end method
