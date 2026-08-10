.class public final Lcom/transsion/camera/app/intent/IntentParser;
.super Ljava/lang/Object;
.source "IntentParser.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideoDefaultOn:Z

.field public mAppointCameraId:Z

.field public mCameraId:Ljava/lang/String;

.field public mDelayTime:I

.field public mFromIntent:Z

.field public mGoogleAssistantIntent:Z

.field public mIsFromDocument:Z

.field public mLaunchSource:Ljava/lang/String;

.field public mLaunchSourceInt:I

.field public mOpenOnly:Z

.field public mPhotoIntent:Z

.field private mProjectSupportSat:Z

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field public mSpecifyASD:Z

.field public mSpecifyBokeh:Z

.field public mSpecifyBokehOff:Z

.field public mSpecifyFaceBeauty:Z

.field public mSpecifyFrontASD:Z

.field public mSpecifyFrontFunVideo:Z

.field public mSpecifyFrontFunVideoOff:Z

.field public mSpecifyFunVideo:Z

.field public mSpecifyFunVideoOff:Z

.field public mSpecifyHDR:Z

.field public mSpecifyHDROff:Z

.field public mSpecifyMacro:Z

.field public mSpecifyMode:Z

.field public mSpecifyMultiFacebeauty:Z

.field public mSpecifyMultiFacebeautyOff:Z

.field public mSpecifySettingVideoPortrait:Z

.field public mSpecifySlimBody:Z

.field public mSpecifySuperDefinitionOff:Z

.field public mSpecifySuperDefinitionOn:Z

.field public mSpecifyWideAngle:Z

.field public mVideoIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/intent/IntentParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 27
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    .line 68
    iput-object p4, p0, Lcom/transsion/camera/app/intent/IntentParser;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 69
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f050087

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    .line 70
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f050005

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseIntent(Landroid/content/Intent;)V

    .line 72
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/intent/IntentParser;->parseMetaData(Landroid/os/Bundle;)V

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "0"

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "1"

    .line 140
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDelayTimeFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string p0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    const/4 v0, 0x3

    .line 236
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    .line 238
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 235
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private isEnterIntentMode(Landroid/content/Intent;)Z
    .locals 0

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.IMAGE_CAPTURE"

    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 204
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isFromIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.IMAGE_CAPTURE"

    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.FANS_IMAGE_CAPTURE"

    .line 197
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isGoogleAssistantIntent(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "android.intent.extra.REFERRER_NAME"

    .line 210
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 211
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isOpenOnly(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "android.intent.extra.CAMERA_OPEN_ONLY"

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 244
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isPhotoIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 230
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 231
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isVideoIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 225
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private parseGoogleAssistantIntent(Landroid/content/Intent;)V
    .locals 3

    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isGoogleAssistantIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    .line 178
    sget-object v0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGoogleAssistantIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isOpenOnly(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->getDelayTimeFromIntent(Landroid/content/Intent;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isVideoIntent(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isPhotoIntent(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpenOnly:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDelayTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVideoIntent:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPhotoIntent:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 89
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseIntent intent is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isFromIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    const-string v0, "com.android.systemui.camera_launch_source"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    const/4 v1, -0x1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSourceInt:I

    .line 95
    sget-object v0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[parseIntent] mLaunchSource :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mLaunchSourceInt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSourceInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useFrontCamera(Landroid/content/Intent;)Z

    move-result v0

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCamera(Landroid/content/Intent;)Z

    move-result v1

    .line 99
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseSpecifyModeIntent(Landroid/content/Intent;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseGoogleAssistantIntent(Landroid/content/Intent;)V

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 103
    iput-boolean v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    const-string p1, "1"

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "0"

    if-eqz v1, :cond_6

    .line 106
    iput-boolean v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz v2, :cond_5

    .line 107
    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    if-eqz p1, :cond_5

    .line 108
    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/intent/IntentParser;->screenPocket()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    :cond_3
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_4
    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_5
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_a

    .line 117
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isEnterIntentMode(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    if-eqz p1, :cond_a

    .line 118
    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    if-nez p1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/app/intent/IntentParser;->screenPocket()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 119
    :cond_8
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_9
    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_a
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method private parseMetaData(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 77
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseMetaData data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ModeName"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    const-string p1, "0"

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private parseSpecifyModeIntent(Landroid/content/Intent;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    const-string v0, "SpecifyMode"

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASDMode"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    const-string v0, "HDRMode"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    const-string v0, "HDROffMode"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    const-string v0, "SuperDefinitionOffMode"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    const-string v0, "SuperDefinitionOnMode"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    const-string v0, "MacroMode"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    const-string v0, "WideAngleMode"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    const-string v0, "FaceBeauty"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFaceBeauty:Z

    const-string v0, "SlimBody"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySlimBody:Z

    const-string v0, "FunVideoMode"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideo:Z

    const-string v0, "FunVideoOffMode"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideoOff:Z

    const-string v0, "BokehMode"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    const-string v0, "BokehOffMode"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokehOff:Z

    const-string v0, "FrontASDMode"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontASD:Z

    const-string v0, "MultiFaceBeautyMode"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    const-string v0, "MultiFaceBeautyOffMode"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeautyOff:Z

    const-string v0, "FrontFunVideoMode"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    const-string v0, "FrontFunVideoOffMode"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideoOff:Z

    const-string v0, "VideoModeWithPortrait"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySettingVideoPortrait:Z

    :cond_0
    return-void
.end method

.method private screenPocket()Z
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private useBackCamera(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "com.android.systemui.camera_launch_source"

    .line 266
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_double_tap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arcore_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCameraForTest(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x3

    const/4 v1, -0x1

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private useBackCameraForTest(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "isVoiceQuery"

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NoUiQuery"

    .line 279
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private useFrontCamera(Landroid/content/Intent;)Z
    .locals 3

    const-string p0, "SpecifyMode"

    .line 248
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PortraitMode"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "FrontASDMode"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MultiFaceBeautyMode"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MultiFaceBeautyOffMode"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FrontFunVideoMode"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FrontFunVideoOffMode"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    const-string v0, "ModeFromAod"

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    or-int/2addr p0, v0

    if-nez p0, :cond_3

    const-string p0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    .line 259
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "android.intent.extra.USE_FRONT_CAMERA"

    .line 260
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    .line 261
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "selfie"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method
