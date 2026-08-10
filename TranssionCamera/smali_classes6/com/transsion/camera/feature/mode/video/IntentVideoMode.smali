.class public Lcom/transsion/camera/feature/mode/video/IntentVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "IntentVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;
    }
.end annotation


# static fields
.field private static mFixedQualityFor3RD:Ljava/lang/String;


# instance fields
.field private final mFixedQualityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

.field private mIsUriFromIntent:Z

.field private mKeyFlashValue:Ljava/lang/String;

.field private mLimitDuration:I

.field private mLimitQuality:I

.field private mLimitSize:J

.field private mSaveUri:Landroid/net/Uri;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIsUriFromIntent:Z

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    .line 60
    new-instance p1, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityMap:Ljava/util/HashMap;

    .line 70
    new-instance p1, Lcom/transsion/camera/app/ui/IntentReviewUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IntentReviewUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIsUriFromIntent:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->attachToSaveUri()V

    return-void
.end method

.method private attachToSaveUri()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[attachToSaveUri] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v1, -0x1

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private changeFlashState(Ljava/lang/String;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 202
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 201
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 5

    .line 306
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 307
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 p0, 0x0

    .line 308
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 309
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    return-object v0
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteCurrentVideo] mSaveUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    .line 209
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    .line 300
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.intent.extra.sizeLimit"

    const-wide/16 v2, 0x0

    .line 315
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    const-string v1, "android.intent.extra.durationLimit"

    const/4 v2, 0x0

    .line 316
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitDuration:I

    const-string v1, "android.intent.extra.videoQuality"

    .line 318
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 321
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_0

    .line 322
    invoke-static {v2, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitQuality:I

    :cond_0
    const-string v1, "output"

    .line 326
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "rw"

    .line 329
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 330
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    const-string p0, "key_eye_detection"

    const-string p1, "key_fingerprint_capture"

    .line 117
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 122
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 123
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "on"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 78
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->getSourceIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->parseIntent(Landroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p3

    new-instance p4, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;)V

    invoke-interface {p2, p3, p4}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;)V

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setNavigationBarHeight(I)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    return-void
.end method

.method protected isDurationInValid(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 267
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-nez v0, :cond_0

    .line 270
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

    .line 273
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 276
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 257
    :cond_2
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateQuality mLimitQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFixedQualityFor3RD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitQuality:I

    if-lez v0, :cond_0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    sget-object p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    return-object p0

    .line 294
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onSettingReady()V
    .locals 5

    .line 217
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 219
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v1

    .line 222
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingReady() flashValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " showing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 225
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    const-string v0, "off"

    .line 226
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method public onShutterLongClick(I)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterLongClick(I)Z

    move-result p0

    return p0
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 185
    :try_start_0
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 187
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, 0x0

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 190
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    neg-int v0, v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    const-string p2, "off"

    .line 193
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    if-nez p2, :cond_0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 157
    :try_start_0
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 159
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, 0x0

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 162
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    neg-int v0, v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    const-string p2, "off"

    .line 165
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    if-nez p2, :cond_0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onVideoMediaRecorderInfoConstruct], mLimitDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mLimitSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setTargetUri(Landroid/net/Uri;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIsUriFromIntent:Z

    .line 144
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitDuration:I

    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    .line 145
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxDuration(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 147
    :cond_1
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    .line 148
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    :cond_2
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCallingPackage] callingPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 94
    sput-object p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_0
    return-void
.end method
