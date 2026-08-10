.class final Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;
.super Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;
.source "TimeLapseVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeLapseParams"
.end annotation


# instance fields
.field private mDocumentFile:Landroidx/documentfile/provider/DocumentFile;

.field final synthetic this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 977
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;Ljava/io/FileDescriptor;ILandroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 981
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;Ljava/io/FileDescriptor;I)V

    .line 982
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->mDocumentFile:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method

.method private removeFile()V
    .locals 6

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->mDocumentFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1009
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->mDocumentFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 1010
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFile, cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1011
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->mDocumentFile:Landroidx/documentfile/provider/DocumentFile;

    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".videorecorder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1018
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method private resetState()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    .line 1003
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$902(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    return-void
.end method


# virtual methods
.method public onDurationOutLimit()V
    .locals 0

    .line 998
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->removeFile()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$6800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped(I)V
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopped, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    .line 1026
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v0, 0x3

    const/16 v1, 0x64

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V

    .line 1035
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->mDocumentFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p1, v0, v1, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$7400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V

    return-void

    .line 1027
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->removeFile()V

    .line 1028
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onMediaRecorderStopped(IZ)V

    .line 1029
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoRestartPreviewed()V

    .line 1030
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->resetState()V

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$7100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
