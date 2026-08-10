.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "TimeLapseVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;
.implements Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_LAPSE_RATE:I = 0xf

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEMP_RECORD_FILE:Ljava/lang/String; = ".temp_record"

.field private static final TIME_MILLIS_3_FRAME:I = 0x3

.field private static final TIME_MINUTE_TO_MILLI:I = 0xea60

.field private static final VIDEO_FRAME_RATE:I = 0x1e


# instance fields
.field private isCreateFileFail:Z

.field private final mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

.field private final mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

.field private mTimelapseEncodeRatio:I

.field private final mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;


# direct methods
.method public static synthetic $r8$lambda$Jh6FV0pMKqfXX0nGEkaKpQj4Tcs(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NZXBImGwtfhhpBoozUNH4JmUqOc(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->isCreateFileFail:Z

    .line 99
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimelapseEncodeRatio:I

    .line 356
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 358
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/Object;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/view/Surface;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    return p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/util/Size;
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getCurrentVideoSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimelapseEncodeRatio:I

    return p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$6302(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7602(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;J)J
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$7700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$8200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide v0
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 3

    .line 344
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 349
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 351
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getCurrentVideoSize()Landroid/util/Size;
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d0

    const/16 v2, 0x438

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "_"

    .line 459
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 461
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 463
    new-instance v0, Landroid/util/Size;

    iget v3, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v3, p0}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 465
    :catch_0
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 457
    :cond_1
    :goto_0
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private getEncodeVideoFrameRate()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method private getTimeLapseRate()D
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_time_lapse"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->setTimeLapseRate(I)V

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeLapseRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string p0, "0"

    .line 522
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 525
    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    return-wide v2

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private initTimeLapseRecorder()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 451
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 7

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v3

    .line 336
    new-instance v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v1, v0

    move-object v2, p1

    move-object v4, v5

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    .line 337
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->updateLayout(Z)V

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    return-void
.end method

.method private isRecordTimeLimited()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 356
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->pauseResumeRecord()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->takeSnapShot()V

    return-void
.end method

.method private pauseResumeRecord()V
    .locals 4

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_0

    .line 393
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_0
    return-void
.end method

.method private takeSnapShot()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_0

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    :cond_0
    return-void
.end method

.method private updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/app/common/relation/Relation;",
            ")V"
        }
    .end annotation

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    .line 572
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_0

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoQualityRelation supportStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 581
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x6

    .line 582
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_2

    .line 585
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    .line 587
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 589
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getDataFlowType()I
    .locals 1

    .line 562
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    move p0, v0

    .line 565
    :goto_0
    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 211
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "key_anti_video"

    .line 212
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "key_fingerprint_capture"

    .line 213
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "key_taint_detection"

    .line 214
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 5

    .line 535
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_volume_key"

    const-string v2, "Shutter"

    .line 537
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 542
    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 543
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {v3, v1, v2, v4}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    const-string v2, "8_60"

    .line 545
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v2, "6_60"

    .line 546
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 548
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "front_time_lapse_remove_2k"

    invoke-static {v2, v4, v3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "key_video_quality"

    const-string v3, "11"

    const-string v4, "off"

    .line 549
    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 553
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 554
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 141
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    const-string p2, "time_lapse_encode_ratio"

    .line 142
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimelapseEncodeRatio:I

    .line 143
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const-string p1, "key_time_lapse"

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_time_lapse_duration"

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 147
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected isDurationInValid(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1111
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->onTimeLapseWheelHide()V

    .line 1112
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1113
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_0

    .line 1104
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->onTimeLapseWheelShow()V

    .line 1105
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_0

    .line 1119
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x7b

    .line 1120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 275
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-nez v0, :cond_0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mVideoUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const/16 v0, 0x52

    .line 282
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    goto :goto_0

    .line 283
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_2

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, p1, :cond_3

    :cond_2
    const/16 v0, 0x53

    .line 284
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 286
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onShutterClick(I)Z

    return v1

    :cond_0
    return v2
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 134
    new-instance p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoHelper;-><init>()V

    return-object p0
.end method

.method public onFrameBufferTimeOut()V
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p0, :cond_0

    .line 605
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_0
    return-void
.end method

.method public onMediaCodecException()V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p0, :cond_0

    .line 598
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_0
    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 0

    .line 434
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopped(IZ)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onProgressEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onShutterClick(I)Z

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 253
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_time_lapse"

    .line 254
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->setTimeLapseRate(I)V

    :cond_0
    const-string v0, "key_time_lapse_duration"

    .line 257
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz p0, :cond_1

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const p2, 0xea60

    mul-int/2addr p1, p2

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->setTimeLapseDuration(J)V

    :cond_1
    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_time_lapse_duration"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->setTimeLapseDuration(J)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 5

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterClick mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkPermitBeforeStart()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    const-wide/16 v1, 0x3e8

    .line 484
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->initTimeLapseRecorder()V

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p1, :cond_4

    .line 491
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xf

    .line 492
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 496
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->stopProgressView()V

    :cond_4
    :goto_0
    return v0
.end method

.method public onShutterDown()V
    .locals 0

    .line 1096
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onShutterDown()V

    .line 1097
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->onShutterDown()V

    return-void
.end method

.method public onShutterUp(I)V
    .locals 0

    .line 1090
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterUp(I)V

    .line 1091
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->onShutterUp()V

    return-void
.end method

.method protected onSnapShotStart()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playCaptureAnimation(Landroid/content/Context;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .locals 4

    .line 308
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_0

    .line 311
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 312
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->hideInfo()V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->stopProgressView()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 325
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 326
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 325
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method protected prepareVideoData()I
    .locals 7

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "prepareVideoData mRecordingFlag : true"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 165
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 167
    :try_start_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 169
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 173
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "-1"

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 180
    monitor-exit v1

    return v2

    :cond_2
    const-string v3, "_"

    .line 183
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 184
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 187
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    float-to-double v5, v3

    iput-wide v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 188
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 189
    iput v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 190
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "6_60"

    .line 192
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "8_60"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    :cond_3
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_4

    .line 194
    iget v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v2, v2, 0x2

    .line 195
    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 199
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v2, :cond_5

    .line 200
    invoke-static {v2, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Landroid/media/CamcorderProfile;)V

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    .line 203
    monitor-exit v1

    return p0

    .line 205
    :cond_6
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 1

    .line 299
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->hideInfo()V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->resume()V

    :cond_0
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 506
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setCaptureRate(D)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    .line 508
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getEncodeVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setVideoFrameRate(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    .line 509
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->isRecordTimeLimited()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method public stopRecording(Z)Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    move-result p0

    return p0
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_AWB_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 292
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .locals 3

    .line 233
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 234
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoTimeLapseRate(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->unInitVideoUI()V

    :cond_0
    const-string v0, "key_time_lapse"

    .line 239
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_time_lapse_duration"

    .line 240
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_1

    .line 242
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_0
    return-void
.end method
