.class Lcom/transsion/camera/feature/mode/video/VideoMode$4;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataBufferRecorderPaused()V
    .locals 1

    .line 996
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onDataBufferRecorderPrepared()V
    .locals 4

    .line 953
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onDataBufferRecorderPrepared]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1600(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onDataBufferRecorderResumed()V
    .locals 1

    .line 1001
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onDataBufferRecorderSaving()V
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onDataBufferRecorderSaving]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 973
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-static {p0, v1, v2, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2100(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V

    return-void
.end method

.method public onDataBufferRecorderStarted()V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1700(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onDataBufferRecorderStarted]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1800(Lcom/transsion/camera/feature/mode/video/VideoMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 965
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 966
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateLastClickTime()V

    return-void
.end method

.method public onDataBufferRecorderStopped()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onDataBufferRecorderStopped], play shutter stop sound"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3100(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    const-string v1, "VideoStop.ogg"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    .line 1008
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->startStopRecording(Z)V

    return-void
.end method

.method public onDataBufferRecorderStopped(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2200(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onDataBufferRecorderStopped]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2300(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    const/16 v0, 0x200

    .line 981
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 982
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2400(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 984
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2500(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V

    .line 985
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 986
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2600(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V

    .line 987
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2700(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 989
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2800(Lcom/transsion/camera/feature/mode/video/VideoMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 990
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$2900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->sendNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStartFailed()V
    .locals 4

    .line 936
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onStartFailed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1000(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 939
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1100(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V

    return-void
.end method

.method public onStopFailed()V
    .locals 4

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1200(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onStopFailed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1300(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 947
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1400(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V

    return-void
.end method
