.class public Lcom/transsion/camera/feature/mode/movie/MovieMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "MovieMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/IMovieOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/feature/mode/movie/IMovieOperator;"
    }
.end annotation


# instance fields
.field private mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

.field private mLowerPreviewSize:Z

.field private final mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

.field private mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

.field private mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

.field private mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

.field private mPaused:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mResultCode:I

.field private final mSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPaused:Z

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mResultCode:I

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewWidth:I

    .line 82
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewHeight:I

    .line 283
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;-><init>(Lcom/transsion/camera/feature/mode/movie/MovieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    .line 98
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/movie/MovieMode;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mResultCode:I

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/mode/movie/MovieMode;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mResultCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/feature/mode/movie/MovieInfo;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    return-object p0
.end method

.method private checkResult(II)Z
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResult requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    .line 231
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mResultCode:I

    if-eq p2, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->getCurrentThemeName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "share"

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->movieOperation(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    if-eqz p1, :cond_3

    .line 244
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->saveMovie(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V

    goto :goto_1

    .line 249
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->getCurrentThemeName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "delete"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->movieOperation(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->deleteMovie()V

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->getCurrentThemeName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "save"

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->movieOperation(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    if-eqz p1, :cond_3

    .line 237
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->saveMovie(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private deleteMovie()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMovie result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getFlashValue()Ljava/lang/String;
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->isFlashOn()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->flashOnValue()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->isFlashOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->turnOn()V

    :cond_1
    return-object v1
.end method

.method private previewSizeChanged(Landroid/util/Size;)Z
    .locals 2

    .line 414
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewHeight:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eq p0, p1, :cond_0

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

.method private saveMovie(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V
    .locals 8

    .line 261
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 264
    :try_start_0
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 266
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, v1

    const-string v6, "0"

    const-string v7, "key_movie_duration"

    if-eqz v5, :cond_0

    .line 269
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v7, v6, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 271
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v5

    invoke-virtual {v5, v7, v6, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 273
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 274
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 276
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v2

    const-string v5, "key_location"

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 275
    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->createContentValues(Lcom/transsion/camera/feature/mode/movie/MovieInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object p1

    .line 277
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    invoke-interface {v1, p1, v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x3

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public checkRecordable()Z
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkRecordable mInternalStorageOperator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "checkRecordable space is not enough, can not record movie."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getLowStorageMessage()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/movie/R$string;->storage_no_space:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_fun_definition"

    const-string p1, "key_distortion_correction"

    .line 146
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->getFlashValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieRestriction;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 420
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/MovieRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 398
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v4, v2

    div-double v1, v0, v4

    .line 399
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mLowerPreviewSize:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x2d0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v7, p0

    const/4 v8, 0x0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 105
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    const/4 p4, 0x1

    .line 107
    invoke-interface {p3, p4}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->getShutterTypeSelftimerOff()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    const/4 p4, 0x0

    .line 109
    invoke-interface {p3, p4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p6, Lcom/transsion/camera/feature/movie/R$bool;->movie_mode_lower_preview_size:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mLowerPreviewSize:Z

    .line 111
    new-instance p4, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-direct {p4, p3}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    .line 112
    new-instance p4, Lcom/transsion/camera/feature/mode/movie/FlashController;

    iget-object p6, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-direct {p4, p6, p2}, Lcom/transsion/camera/feature/mode/movie/FlashController;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    .line 113
    invoke-virtual {p4}, Lcom/transsion/camera/feature/mode/movie/FlashController;->init()V

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {p2, p4}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->setFlashController(Lcom/transsion/camera/feature/mode/movie/FlashController;)V

    .line 115
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p4

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p6

    invoke-virtual {p2, p4, p6}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->init(II)V

    .line 116
    new-instance p2, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-direct {p2, p1, p4}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/MovieHelper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 117
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->init(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->updateCameraFace(Z)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->setMovieRecorder(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->setMovieOperator(Lcom/transsion/camera/feature/mode/movie/IMovieOperator;)V

    return-void
.end method

.method public isForceRecreateSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 341
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 344
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->checkResult(II)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 376
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBatteryStatusChanged(ZII)V

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateBatteryStatus(II)V

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->updateCameraFace(Z)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 363
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateOrientation(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 369
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->onSettingReady()V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->checkState()V

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->onShutterClick()Z

    move-result p0

    return p0
.end method

.method public onShutterLongClick(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .locals 1

    .line 349
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPaused:Z

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->pause()V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->stopRecord()V

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->cancelProduceMovie()V

    return-void
.end method

.method public playback(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V
    .locals 3

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.ReviewCameraActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "review_fragment"

    const-string v2, "movie_playback"

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->createBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 p1, 0x64

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x93

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPaused:Z

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->resume()V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    .line 221
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->getResult()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->checkResult(II)Z

    const/4 p0, -0x1

    .line 222
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->setResult(I)V

    :cond_0
    return-void
.end method

.method public reviewMovie(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V
    .locals 3

    .line 186
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    .line 187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.ReviewCameraActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "review_fragment"

    const-string v2, "movie"

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v1

    const-string v2, "isSecureCamera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "movie_info"

    .line 190
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 p1, 0x65

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x94

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->unInit()V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->unInit()V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->unInit()V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->previewSizeChanged(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewWidth:I

    .line 408
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewHeight:I

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode;->mPreviewWidth:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->updateSize(II)V

    :cond_0
    return-void
.end method
