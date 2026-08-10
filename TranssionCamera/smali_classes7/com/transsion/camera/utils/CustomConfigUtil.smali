.class public final Lcom/transsion/camera/utils/CustomConfigUtil;
.super Ljava/lang/Object;
.source "CustomConfigUtil.java"


# static fields
.field private static sCustomConfigUtil:Lcom/transsion/camera/utils/CustomConfigUtil;


# instance fields
.field private final mBothSupport:Z

.field private final mCloseSB:Z

.field private final mDefaultOption:I

.field private final mFaceAttributeSupport:Z

.field private mIsThumbnailPostView:Z

.field private final mItdV2Support:Z

.field private final mMakeUpCloseSB:Z

.field private final mMakeUpDefaultAI:Z

.field private final mMakeUpDefaultClose:Z

.field private final mMakeUpReducePreviewSizeHeight:I

.field private final mMakeupSupport:Z

.field private final mSlimbodyReducePreviewSizeHeight:I

.field private final mStereoDefaultOpen:Z

.field private final mTeleDefaultOpen:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "slimbody_default_option"

    .line 23
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultOption:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebeauty_slimbody_support"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBothSupport:Z

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeup_support"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeupSupport:Z

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeup_default_close"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpDefaultClose:Z

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeup_default_ai"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpDefaultAI:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slimbody_default_close"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCloseSB:Z

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeup_slimbody_default_close"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpCloseSB:Z

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tele_cam_setting_default_open"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTeleDefaultOpen:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stereo_default_open"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoDefaultOpen:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_attribute_support"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFaceAttributeSupport:Z

    const-string v0, "slimbody_reduce_preview_size_height"

    .line 33
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSlimbodyReducePreviewSizeHeight:I

    const-string v0, "make_up_reduce_preview_size_height"

    .line 34
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpReducePreviewSizeHeight:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_thumbnail_postview"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsThumbnailPostView:Z

    .line 36
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isScreenShotThumbSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsThumbnailPostView:Z

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebeauty_itdV2_support"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mItdV2Support:Z

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 2

    .line 47
    const-class v0, Lcom/transsion/camera/utils/CustomConfigUtil;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/transsion/camera/utils/CustomConfigUtil;->sCustomConfigUtil:Lcom/transsion/camera/utils/CustomConfigUtil;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/transsion/camera/utils/CustomConfigUtil;

    invoke-direct {v1, p0}, Lcom/transsion/camera/utils/CustomConfigUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/camera/utils/CustomConfigUtil;->sCustomConfigUtil:Lcom/transsion/camera/utils/CustomConfigUtil;

    .line 51
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/utils/CustomConfigUtil;->sCustomConfigUtil:Lcom/transsion/camera/utils/CustomConfigUtil;

    return-object v0
.end method


# virtual methods
.method public getBothSupport()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBothSupport:Z

    return p0
.end method

.method public getCloseDefaultSB()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCloseSB:Z

    return p0
.end method

.method public getDefaultOption()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultOption:I

    return p0
.end method

.method public getFaceAttributeSupport()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFaceAttributeSupport:Z

    return p0
.end method

.method public getItdV2Support()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mItdV2Support:Z

    return p0
.end method

.method public getMakeUpCloseSBState()Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpCloseSB:Z

    return p0
.end method

.method public getMakeUpReducePreviewSizeHeight()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpReducePreviewSizeHeight:I

    return p0
.end method

.method public getSlimBodyReducePreviewSizeHeight()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSlimbodyReducePreviewSizeHeight:I

    return p0
.end method

.method public getStereoDefaultValue()Ljava/lang/String;
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoDefaultOpen:Z

    if-eqz p0, :cond_0

    const-string p0, "f4.0"

    goto :goto_0

    :cond_0
    const-string p0, "f0.0"

    :goto_0
    return-object p0
.end method

.method public getTeleCamDefaultOpen()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTeleDefaultOpen:Z

    return p0
.end method

.method public isAIMakeupSupport()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpDefaultAI:Z

    return p0
.end method

.method public isThumbnailPostView()Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsThumbnailPostView:Z

    return p0
.end method

.method public makeupDefaultClose()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpDefaultClose:Z

    return p0
.end method
