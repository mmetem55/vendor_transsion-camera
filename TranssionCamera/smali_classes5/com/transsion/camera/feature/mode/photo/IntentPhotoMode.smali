.class public Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "IntentPhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;,
        Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CROP_INTENT:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final EXTRA_PHOTO_CROP_VALUE:Ljava/lang/String; = "crop"

.field public static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final INLINED_DATA_INTENT:Ljava/lang/String; = "inline-data"

.field private static final INTENT_EXTRA_CIRCLE:Ljava/lang/String; = "circle"

.field private static final INTENT_EXTRA_CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field private static final INTENT_EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final INTENT_EXTRA_RETURN_DATA:Ljava/lang/String; = "return-data"

.field private static final MAX_NUMBER_PIXELS:I = 0xc800

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private mCropValue:Ljava/lang/String;

.field private final mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

.field private mIsQuickCapture:Z

.field private mJpegData:[B

.field private mKeyFlashValue:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance p1, Lcom/transsion/camera/app/ui/IntentReviewUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IntentReviewUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->doAttach()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)[B
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private attachToCropIntent()V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToCropIntent]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getTempUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToCropIntent] return because temp uri is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 340
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 341
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "circleCrop"

    const-string v3, "true"

    .line 342
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    const-string v3, "output"

    .line 345
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const-string v3, "return-data"

    .line 347
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/16 v0, 0x3e8

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->transferIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private attachToInLinedIntent()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToInLinedIntent]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    invoke-static {v0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 325
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 327
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v0, -0x1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private changeFlashState(Ljava/lang/String;Z)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 234
    invoke-static {}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 233
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    if-eqz p2, :cond_0

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueSync(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doAttach()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->attachToInLinedIntent()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->attachToCropIntent()V

    :goto_0
    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    .line 245
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private getTempUri()Landroid/net/Uri;
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 361
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 364
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 365
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 367
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v2

    .line 370
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 372
    :goto_1
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 373
    throw p0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x3

    .line 257
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "crop"

    .line 259
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    const-string v0, "android.intent.extra.quickCapture"

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIsQuickCapture:Z

    const-string v0, "output"

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseIntent]mCropValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsQuickCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIsQuickCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSaveUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 407
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;
    .locals 1

    .line 412
    new-instance v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const-string p0, "key_edit_watermark"

    const-string p1, "key_super_flash"

    const-string v0, "key_eye_detection"

    const-string v1, "key_fingerprint_capture"

    .line 111
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 253
    invoke-static {}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 101
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 102
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->getSourceIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->parseIntent(Landroid/content/Intent;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p1

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p3

    new-instance p4, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$1;)V

    invoke-interface {p2, p3, p4}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;)V

    .line 105
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setNavigationBarHeight(I)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyPictureTaken([BZI)I
    .locals 0

    .line 212
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    .line 215
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIsQuickCapture:Z

    if-eqz p3, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->doAttach()V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 219
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 220
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 221
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    neg-int p3, p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 222
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    const-string p1, "off"

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xe

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :goto_0
    return p2
.end method

.method public onBackPressed()Z
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Battery"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 190
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "Temperature"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    if-ne v2, v1, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    :cond_1
    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "capture_state"

    const-string v2, "capture_end"

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 202
    :cond_3
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .locals 0

    .line 94
    new-instance p0, Lcom/transsion/camera/feature/mode/photo/PhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/PhotoHelper;-><init>()V

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onSettingReady()V
    .locals 5

    .line 128
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v1

    .line 133
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

    .line 136
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "off"

    .line 137
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method public onShutterLongClick(I)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterLongClick(I)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->unInit()V

    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 152
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->jpegCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 160
    :cond_1
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
