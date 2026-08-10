.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;
.super Ljava/lang/Object;
.source "FunVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 1

    .line 859
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    check-cast p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    const/4 p1, 0x1

    const/16 v0, 0x64

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    :cond_0
    return-void
.end method

.method public onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 3

    .line 867
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted, encoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 868
    instance-of p1, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz p1, :cond_0

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2402(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;J)J

    :cond_0
    return-void
.end method

.method public onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    .locals 10

    const/16 p1, 0x2e

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xcb

    if-ne v2, p2, :cond_0

    .line 877
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onHideRecordingUI()V

    .line 878
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStopped, errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 882
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v3, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    .line 883
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 884
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 887
    :cond_0
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 888
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 889
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v6}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 891
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v6}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStopped, recordTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 892
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v6}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v6

    .line 893
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    iget-object v8, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v8}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v7

    if-eq v2, v7, :cond_6

    const/4 v7, 0x2

    if-ne v7, p2, :cond_1

    goto/16 :goto_2

    .line 916
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 918
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    new-instance p2, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    .line 919
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->setSpeed(I)F

    move-result p1

    .line 920
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/faceunity/entity/Effect;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 921
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/faceunity/entity/Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->setMusicPath(Ljava/lang/String;)V

    .line 923
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 925
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/faceunity/entity/Effect;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 926
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/faceunity/entity/Effect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p2, ""

    .line 928
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0, v6, p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_1

    .line 930
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 p2, 0x3

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$string;->saving_dialog_string:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 931
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->start(Ljava/lang/String;Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 932
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    .line 895
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onHideRecordingUI()V

    .line 896
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    const/4 v6, 0x0

    invoke-static {p2, v6}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    .line 897
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 898
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 900
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 902
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 903
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2, v6}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z

    .line 904
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 905
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    move-result p2

    int-to-long v0, p2

    cmp-long p2, v4, v0

    if-gez p2, :cond_8

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 906
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$string;->recording_short_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;)V

    .line 908
    :cond_8
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 910
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 911
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$4700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_9
    return-void
.end method
