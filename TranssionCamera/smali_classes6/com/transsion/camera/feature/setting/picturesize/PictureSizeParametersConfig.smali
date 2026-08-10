.class public Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;
.super Ljava/lang/Object;
.source "PictureSizeParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.03

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private hasBillionPixelSize:Z

.field private m4in1Size:Landroid/util/Size;

.field private mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mMaxSensorSize:Landroid/util/Size;

.field private mMaxWidthByPictureQuality:I

.field private mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

.field mPostViewSize:Landroid/util/Size;

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field mSupportedHDThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mSupportedPostViewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mSupportedThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    const/16 v0, 0x670

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mMaxWidthByPictureQuality:I

    .line 69
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 66
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private checkSupportBillionSize()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    const-string v1, "key_super_definition"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    .line 335
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "billion"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private filterRemosaicSize(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 246
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private filterSizeForAIRemosaic(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 251
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 253
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 254
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 255
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private filterSizeForPictureQuality(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 264
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mMaxWidthByPictureQuality:I

    if-le v3, v4, :cond_0

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 297
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    sub-double v0, p2, v0

    .line 298
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 284
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 285
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    sub-double v1, p2, v1

    .line 286
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z
    .locals 1

    .line 149
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    .line 150
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 151
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 152
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    const p0, 0x5f5e100

    if-lt v0, p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 272
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 274
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 275
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method

.method private sizeToStr(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private updateSatPictureSize(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 4

    .line 85
    iget v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 89
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPhysicalId4In1Size(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz v1, :cond_5

    .line 92
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 94
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getRatioInStore()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    :cond_4
    if-eqz v0, :cond_5

    .line 108
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setSatPictureSize(Landroid/util/Size;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_picture_size_sat"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getSuperDefinitionValueInDataStore()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isSupportFullSize()Z

    move-result v1

    .line 163
    sget-object v2, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters] currentValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isFullSizeSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-eqz v3, :cond_0

    .line 165
    iget v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateSatPictureSize(Lcom/transsion/camera/adapter/CameraParameters;I)V

    :cond_0
    const/4 v3, 0x0

    .line 169
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isSupportSuperDefinition()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    const-string v3, "off"

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    if-eqz v1, :cond_2

    .line 174
    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v1, "on"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->checkSupportBillionSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterRemosaicSize(Ljava/util/List;)V

    .line 183
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedAIRemosaic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeForAIRemosaic(Ljava/util/List;)V

    .line 187
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentValue:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v3, v6

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isRestoring()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isPictureQualitySupport()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "standard"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeForPictureQuality(Ljava/util/List;)V

    :cond_5
    move v3, v6

    :cond_6
    if-eqz v3, :cond_7

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->reConfigSupportList(Ljava/util/List;)V

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], newValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,mPostViewSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,mThumbnailSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setPostViewSize(Landroid/util/Size;)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setThumbnailSize(Landroid/util/Size;)V

    const/4 p0, -0x1

    if-eqz v0, :cond_9

    .line 209
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPictureSize(Landroid/util/Size;)V

    if-eqz v1, :cond_9

    .line 212
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v6, p0

    .line 217
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ret:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v6

    :cond_9
    const-string p1, "return -1"

    .line 221
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public getMaxSensorSize()Landroid/util/Size;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mMaxSensorSize:Landroid/util/Size;

    return-object p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    .line 118
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    .line 120
    sget-object v1, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraCapabilities, 4in1SizeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mMaxSensorSize:Landroid/util/Size;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    goto :goto_0

    .line 131
    :cond_0
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_quality"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "standard"

    .line 135
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    .line 136
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isPictureQualitySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeForPictureQuality(Ljava/util/List;)V

    .line 140
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPostViewSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedPostViewSizes:Ljava/util/List;

    .line 142
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedThumbnailSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 143
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHDThumbnailSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedHDThumbnailSizes:Ljava/util/List;

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->hasBillionPixelSize:Z

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewState(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    return-void
.end method

.method protected updateThumbnailSize(Ljava/lang/String;)V
    .locals 5

    .line 307
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateThumbnailSize+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 309
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedPostViewSizes:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    .line 312
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->hasBillionPixelSize:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getSuperDefinitionValueInDataStore()Ljava/lang/String;

    move-result-object p1

    const-string v3, "off"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result p1

    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedHDThumbnailSizes:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    :cond_1
    :goto_0
    const-string p0, "updateThumbnailSize-"

    .line 318
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
