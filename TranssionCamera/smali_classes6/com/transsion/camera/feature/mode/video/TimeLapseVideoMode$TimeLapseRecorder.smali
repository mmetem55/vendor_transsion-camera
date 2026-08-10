.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;
.super Ljava/lang/Object;
.source "TimeLapseVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeLapseRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_STORAGE_DELAY:I = 0xbb8

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final MSG_CHECK_STORAGE:I = 0x3

.field private static final MSG_PREPARE_RECORDER:I = 0x2

.field private static final MSG_START_RECORD:I = 0x0

.field private static final MSG_STOP_RECORD:I = 0x1

.field static final TEMP_VIDEO_NAME:Ljava/lang/String; = ".videorecorder"

.field static final TEMP_VIDEO_TMP:Ljava/lang/String; = ".tmp"


# instance fields
.field private final AUTO_TIME_LAPSE_RATES:[I

.field private mPreparingFlag:Z

.field private mRecordingFlag:Z

.field private final mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

.field private final mRecordingThread:Landroid/os/HandlerThread;

.field private mStartRecordTime:J

.field private final mUsingDocumentFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

.field private final mVideoFileSpecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/app/common/mode/VideoFileSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHeight:I

.field private final mVideoNameFormat:Ljava/text/SimpleDateFormat;

.field private mVideoWidth:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;


# direct methods
.method public static synthetic $r8$lambda$AKG_30Gg5fCRYuiNmFMuDUpI1nU(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->lambda$deleteOldTempFiles$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Su86Gc3cYnKAlJ73GKILzQoc3d8(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->lambda$deleteOldTempFiles$0(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .locals 2

    .line 731
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 614
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->AUTO_TIME_LAPSE_RATES:[I

    const/4 v0, 0x0

    .line 615
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    .line 616
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoFileSpecs:Ljava/util/HashMap;

    .line 732
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecordingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingThread:Landroid/os/HandlerThread;

    .line 733
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 734
    new-instance v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    .line 735
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getVideoNameFormat()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    return-void

    :array_0
    .array-data 4
        0xf
        0x1e
        0x3c
        0x78
        0x12c
    .end array-data
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->onMediaCodecError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->configRecorder()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->setEncoderParams()V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z
    .locals 0

    .line 609
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z
    .locals 0

    .line 609
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->stopTimeLapseVideoRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Landroid/media/CamcorderProfile;)V
    .locals 0

    .line 609
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->prepareRecorder(Landroid/media/CamcorderProfile;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->quit()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->pauseResumeRecording()V

    return-void
.end method

.method static synthetic access$6800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->doStartEncoder()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->init()V

    return-void
.end method

.method static synthetic access$7100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Ljava/util/HashMap;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoFileSpecs:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 609
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->saveVideo(ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->startTimeLapseVideoRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z
    .locals 0

    .line 609
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z
    .locals 0

    .line 609
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    return p1
.end method

.method private configRecorder()V
    .locals 5

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 760
    :cond_0
    :try_start_0
    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoHeight:I

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-direct {v0, v2, v3, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;-><init>(IILcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    .line 761
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->setInputSurface(Landroid/view/Surface;I)V

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    .line 765
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    .line 767
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , VideoOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->setVideoOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 770
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "configRecorder failed"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private createParams()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoFileSpecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 819
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 820
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 821
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->AUTO_TIME_LAPSE_RATES:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 822
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_time_lapse"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 824
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 825
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v2, :cond_1

    .line 828
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 829
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v2, :cond_2

    const v2, 0x186a0

    .line 834
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 837
    new-instance v2, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".mp4"

    const-string v6, "video/mp4"

    invoke-direct {v2, v3, v5, v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/documentfile/provider/DocumentFile;

    .line 840
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v7

    invoke-interface {v7, v2, v9, v3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;I[Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 841
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createTempVideoFile cost : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoFileSpecs:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v11, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    aget-object v10, v3, v4

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$TimeLapseParams;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;Ljava/io/FileDescriptor;ILandroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v3, v3, v4

    if-eqz v3, :cond_4

    .line 845
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 847
    :cond_4
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_6
    return-object v0
.end method

.method private deleteNewTempFiles()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    .line 859
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    goto :goto_0

    .line 861
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 862
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private deleteOldTempFiles()V
    .locals 2

    .line 867
    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 894
    new-instance p0, Ljava/lang/Thread;

    const-string v1, "delete old temp files"

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private doStartEncoder()V
    .locals 3

    .line 803
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartEncoder mPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 805
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    .line 806
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->stopTimeLapseVideoRecording()V

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->startRecording()V

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    .line 811
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mStartRecordTime:J

    .line 813
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->deleteOldTempFiles()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/util/Size;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoWidth:I

    .line 745
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoHeight:I

    return-void
.end method

.method private static synthetic lambda$deleteOldTempFiles$0(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 885
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".videorecorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$deleteOldTempFiles$1()V
    .locals 8

    .line 869
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 871
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    .line 872
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingDocumentFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 875
    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    if-nez v6, :cond_1

    goto :goto_2

    .line 876
    :cond_1
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".videorecorder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 877
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 881
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 882
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 883
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 885
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mUsingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    new-instance v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 886
    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    if-nez v4, :cond_5

    goto :goto_5

    .line 887
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception p0

    .line 891
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method

.method private onMediaCodecError()V
    .locals 5

    .line 925
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 928
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    .line 929
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoRestartPreviewed()V

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onMediaRecorderStopped(IZ)V

    .line 931
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 933
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    return-void
.end method

.method private pauseResumeRecording()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->pauseResumeRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPaused()V

    goto :goto_0

    .line 920
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderResumed()V

    :goto_0
    return-void
.end method

.method private prepareRecorder(Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 909
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private quit()V
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method private saveVideo(ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 7

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopped, saveVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1044
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7602(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1046
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1048
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mStartRecordTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ".videorecorder"

    if-eqz p3, :cond_0

    .line 1050
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    invoke-interface {v3, p3, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Z

    goto :goto_1

    .line 1052
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".videorecorder_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1053
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$7900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1056
    :goto_1
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoFileSpecs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 1057
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->createFileData(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object p2

    .line 1059
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1060
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1061
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v4

    const-string v5, "key_location"

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 1062
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    .line 1064
    div-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date_modified"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1065
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mime_type"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v5, "_data"

    invoke-virtual {p3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "datetaken"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1069
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resolution"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "_size"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v4, :cond_1

    .line 1074
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "latitude"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1075
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "longitude"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1077
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;)V

    invoke-interface {p1, p3, p2, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 1078
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoFileSpecs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 1079
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    .line 1080
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    .line 1081
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    const-string p3, "key_time_lapse"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoTimeLapseRate(Ljava/lang/String;)V

    .line 1082
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    const-string p3, "key_time_lapse_duration"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoTimeLapseDuration(Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$8600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J

    move-result-wide v0

    const-string p0, "key_timelapse_video_duration"

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1084
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    return-void
.end method

.method private setEncoderParams()V
    .locals 8

    .line 775
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEncoderParams mPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 777
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0, v4, v2, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 781
    :cond_0
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    .line 782
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->stopTimeLapseVideoRecording()V

    return-void

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->createParams()Ljava/util/ArrayList;

    move-result-object v0

    .line 786
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEncoderParams createParams end, mPaused:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 787
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 788
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->setRecordParams(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoRestartPreviewed()V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->stopRecording(Z)Z

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->showFileTooShortInfo()V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0, v4, v2, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->stopRecording()V

    .line 796
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->deleteNewTempFiles()V

    .line 797
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    .line 798
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    :goto_0
    return-void
.end method

.method private startTimeLapseVideoRecording()V
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 902
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mPreparingFlag:Z

    .line 903
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingFlag:Z

    .line 904
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 899
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "startTimeLapseVideoRecording record is true, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private stopTimeLapseVideoRecording()V
    .locals 1

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mRecordingHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->mVideoEncoder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    if-eqz p0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->onPause()V

    :cond_0
    return-void
.end method
