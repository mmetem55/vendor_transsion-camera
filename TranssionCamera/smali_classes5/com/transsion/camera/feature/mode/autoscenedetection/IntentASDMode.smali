.class public Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;
.super Lcom/transsion/camera/app/common/mode/FilterHookMode;
.source "IntentASDMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;,
        Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/FilterHookMode<",
        "Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;",
        "Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CROP_INTENT:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final INLINED_DATA_INTENT:Ljava/lang/String; = "inline-data"

.field private static final INTENT_EXTRA_CIRCLE:Ljava/lang/String; = "circle"

.field private static final INTENT_EXTRA_CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field private static final INTENT_EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final INTENT_EXTRA_RETURN_DATA:Ljava/lang/String; = "return-data"

.field private static final MAX_NUMBER_PIXELS:I = 0xc800

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final WIDE_CAMERA_PREVIEW_LIMIT:I = 0x138000


# instance fields
.field private mBackFakeCameraSupport:Z

.field private mCropValue:Ljava/lang/String;

.field private mFrontFakeCameraSupport:Z

.field private mHighDefinitionMode:Z

.field private mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

.field private mIsQuickCapture:Z

.field private mJpegData:[B

.field private mSaveUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/FilterHookMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "IntentASDMode+"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V

    .line 128
    new-instance p1, Lcom/transsion/camera/app/ui/IntentReviewUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IntentReviewUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "IntentASDMode-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->doAttach()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/net/Uri;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)[B
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method private attachToCropIntent()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "attachToCropIntent"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->getTempUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToCropIntent] return because temp uri is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 191
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "circleCrop"

    const-string v3, "true"

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    const-string v3, "output"

    .line 196
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const-string v3, "return-data"

    .line 198
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/16 v0, 0x3e8

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->transferIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private attachToInLinedIntent()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "attachToInLinedIntent"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    invoke-static {v0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 175
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "inline-data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v1, -0x1

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private doAttach()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAttach,mCropValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->attachToInLinedIntent()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->attachToCropIntent()V

    :goto_0
    return-void
.end method

.method private getTempUri()Landroid/net/Uri;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 215
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 216
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 218
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

    .line 221
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :goto_1
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 224
    throw p0
.end method

.method private isFakeDualLens()Z
    .locals 2

    .line 527
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mBackFakeCameraSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mFrontFakeCameraSupport:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 529
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x3

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "crop"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    const-string v0, "android.intent.extra.quickCapture"

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIsQuickCapture:Z

    const-string v0, "output"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    return-void
.end method

.method private readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f0a001d

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mFrontFakeCameraSupport:Z

    .line 519
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mBackFakeCameraSupport:Z

    goto :goto_0

    .line 515
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mBackFakeCameraSupport:Z

    goto :goto_0

    .line 512
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mFrontFakeCameraSupport:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 537
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;-><init>(IZZLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;
    .locals 1

    .line 542
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 547
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 548
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mUri:Landroid/net/Uri;

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 550
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 551
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    neg-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_definition"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "off"

    if-nez v1, :cond_0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    if-nez v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f1002eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_hdr"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when HDR is not off: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 483
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v4, 0x7f100127

    const-string v5, "Continuous shot is not support when Flash is not off: "

    if-nez v1, :cond_2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-1"

    .line 500
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f100121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 2

    .line 324
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 327
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 333
    :cond_2
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050041

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_tran_plugin"

    .line 350
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_filter"

    .line 351
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_distortion_correction"

    .line 352
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_human_detection"

    .line 353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    if-nez v0, :cond_0

    const-string v0, "key_super_definition"

    .line 355
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "key_super_resolution"

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_smile_detection"

    .line 358
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_portraitmode_enhance"

    .line 359
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_asd_enhance"

    .line 360
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_night_hawk"

    .line 361
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->isFakeDualLens()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_fake_asd_camera"

    .line 363
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "key_ai_group_photo"

    .line 368
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_horizon_switch_wide"

    .line 369
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p0, "key_super_flash"

    .line 371
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_taint_detection"

    .line 372
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 375
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 0

    .line 381
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    .line 392
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    .line 393
    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    .line 395
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v3

    .line 397
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 398
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 402
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    sub-double/2addr v7, v0

    .line 403
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    .line 404
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    const v8, 0x138000

    if-gt v7, v8, :cond_1

    .line 405
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v7, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v9, v7, v2

    if-gtz v9, :cond_1

    move-object v4, v6

    move-wide v2, v7

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 416
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 417
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_4

    move-object v4, p0

    goto :goto_1

    .line 421
    :cond_3
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v4

    :cond_4
    :goto_1
    return-object v4
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 134
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 135
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->getSourceIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.media.action.FANS_IMAGE_CAPTURE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->parseIntent(Landroid/content/Intent;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p1

    .line 139
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    if-eqz p2, :cond_0

    .line 140
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p3

    new-instance p4, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$1;)V

    invoke-interface {p2, p3, p4}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;)V

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setNavigationBarHeight(I)V

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_0
    return-void
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .locals 3

    .line 343
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    const v1, 0x7f0a0064

    const v2, 0x7f0f0002

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected isContinuousShotSupport()Z
    .locals 5

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContinuousShotSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_super_definition"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "off"

    if-nez v2, :cond_1

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    if-nez v2, :cond_1

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_hdr"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when HDR is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "Continuous shot is not support when Flash is not off: "

    if-nez v2, :cond_3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash_facade"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_filter"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "0"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-1"

    .line 455
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 459
    :cond_5
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 464
    :cond_6
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public notifyPictureTaken([BZI)I
    .locals 1

    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZI)I

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    if-eqz v0, :cond_1

    .line 285
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    if-eqz p1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    goto :goto_0

    .line 297
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xe

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZI)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .locals 0

    .line 338
    new-instance p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;-><init>()V

    return-object p0
.end method

.method protected onShutterClickBefore(I)Z
    .locals 5

    .line 307
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 312
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_dsp_lowlight_mode"

    const-string v4, "off"

    .line 311
    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_1
    return p1
.end method
