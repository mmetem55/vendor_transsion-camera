.class public Lcom/transsion/camera/app/CameraActivity;
.super Lcom/transsion/camera/app/BaseCameraActivity;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sThumbnailId:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackLensDirtyCounted:Z

.field private mFrontLensDirtyCounted:Z

.field private final mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mShowSystemUI:Z

.field private mSystemUiVisibilityValue:I

.field protected mThumbnailFromAod:Landroid/graphics/Bitmap;

.field private final mThumbnailListener:Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;


# direct methods
.method public static synthetic $r8$lambda$7RZ64aH8nbp7b5Uiq1U39sonl3o(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraActivity;->lambda$new$1(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MLAD0SyDaQfRYY-rwTNXOyrQq-s(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->lambda$showErrorAndFinish$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tQ6QdDT9c5HoO7AA1sqVV4Jx_u8(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraActivity;->lambda$new$0(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mShowSystemUI:Z

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/transsion/camera/app/CameraActivity;->mSystemUiVisibilityValue:I

    .line 83
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 84
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 86
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailListener:Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->showSystemUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->hideSystemUI()V

    return-void
.end method

.method private getShowErrorMessage(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const p1, 0x7f1000c4

    .line 485
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f10002a

    .line 480
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getShowErrorTitle(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const p1, 0x7f10002b

    .line 471
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private hideSystemUI()V
    .locals 2

    .line 587
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x1307

    .line 588
    iput v1, p0, Lcom/transsion/camera/app/CameraActivity;->mSystemUiVisibilityValue:I

    if-ne v1, v0, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/CameraActivity;->mSystemUiVisibilityValue:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/CameraActivity;->onThumbnailUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showErrorAndFinish$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 452
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method private showSystemUI()V
    .locals 2

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x600

    .line 577
    iput v1, p0, Lcom/transsion/camera/app/CameraActivity;->mSystemUiVisibilityValue:I

    if-ne v1, v0, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/CameraActivity;->mSystemUiVisibilityValue:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 164
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_hdr"

    const-string v2, "auto"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 166
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 165
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 168
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    return-void
.end method

.method private startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 173
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_hdr"

    const-string v2, "on"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 172
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 175
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 174
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 177
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 182
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_hdr"

    const-string v2, "off"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 181
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 184
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 183
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 186
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 209
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_macro"

    const-string v2, "on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 211
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "wide_camera"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 210
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 191
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_super_definition"

    const-string v2, "off"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 193
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 192
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 195
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 200
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_super_definition"

    const-string v2, "on"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 202
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 201
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 204
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 216
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 218
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 217
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method protected final applyThumbnailFromIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "ThumbnailFromAod"

    .line 413
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 414
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyThumbnailFromIntent thumbnailId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/manager/ThumbnailCache;->get(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailFromAod:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected final attachThumbnailToIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 402
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachThumbnailToIntent thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 404
    sget v0, Lcom/transsion/camera/app/CameraActivity;->sThumbnailId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/CameraActivity;->sThumbnailId:I

    const-string v1, "ThumbnailFromAod"

    .line 405
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object p1

    sget v0, Lcom/transsion/camera/app/CameraActivity;->sThumbnailId:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/manager/ThumbnailCache;->cache(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .locals 8

    .line 503
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doShowLensDirtyHintIfNeed(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 509
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    if-nez v2, :cond_0

    .line 512
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    goto :goto_0

    :cond_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    if-nez v2, :cond_4

    .line 519
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    :goto_0
    const-string v2, "key_lens_dirty_count_down"

    const/4 v3, 0x0

    .line 529
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    sget-object v5, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShowLensDirtyHintIfNeed id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", countDown: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p1, :cond_2

    .line 533
    :try_start_1
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const v5, 0x7f1000bb

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 534
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 535
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v5, 0x1770

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDuration(I)V

    .line 536
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/BaseAppUI;->showLensDirtyHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :catch_0
    move p1, v3

    :catch_1
    :goto_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_3

    const/16 p1, 0x82

    const/16 v1, 0x96

    .line 544
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->randomValueIn(II)I

    move-result p1

    goto :goto_3

    :cond_3
    sub-int/2addr p1, v1

    .line 548
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method protected hideErrorAndFinish()V
    .locals 2

    .line 493
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hideErrorAndFinish()V

    .line 495
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideErrorAndFinish: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    return-void
.end method

.method protected initAppUI(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 9

    const v0, 0x7f0c0050

    .line 269
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0900ca

    .line 271
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 272
    new-instance v0, Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSecureCamera(Z)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVoiceInteraction(Z)V

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, p1, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    move-object v3, p1

    .line 275
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    new-instance v0, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSystemUIViewListener(Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;)V

    return-void
.end method

.method protected initWindowAttributes()V
    .locals 9

    .line 223
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initWindowAttributes()V

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->showSystemUI()V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 229
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 236
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 237
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 238
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected launchFromAod(Landroid/content/Intent;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "camera_launch_from"

    .line 293
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "launch_from_aod"

    .line 292
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_0

    const/16 v1, 0x1000

    if-ne p1, v1, :cond_4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v1, :cond_4

    .line 423
    sget-object v1, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult, data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 425
    new-instance v1, Lcom/transsion/camera/app/intent/IntentParser;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v1, p3, v2, p0, v3}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 426
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 427
    iget-boolean v2, v1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    const-string v3, "arcore_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 429
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 432
    :cond_2
    iget-boolean v0, v1, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_3

    .line 433
    iget-object v2, v1, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 436
    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/CameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 439
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 107
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[FoldUIForm]onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_1

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyScreenFormChanged(IZZ)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraReConnect(I)Z

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailListener:Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/ThumbnailCache;->addThumbnailListener(Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->launchFromAod(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->applyThumbnailFromIntent(Landroid/content/Intent;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->onCreateTasks(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailListener:Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/ThumbnailCache;->removeThumbnailListener(Lcom/transsion/camera/manager/ThumbnailCache$IThumbnailListener;)V

    .line 102
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onDestroyTasks()V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 8

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez v0, :cond_0

    .line 312
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onNewIntentTasks return because onCreate is not exec."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->launchFromAod(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->applyThumbnailFromIntent(Landroid/content/Intent;)V

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v4, "DocumentActivity"

    .line 326
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ModeName"

    const-string v5, "DocumentEntry"

    .line 328
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 331
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v4, p1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 332
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v4, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 334
    new-instance v4, Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v4, p1, v2, p0, v5}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 335
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v4, v2}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 336
    iget-boolean v2, v4, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    const/4 v5, 0x3

    const-string v6, "volume_double_tap"

    const/4 v7, 0x0

    if-nez v2, :cond_3

    iget-boolean v2, v4, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 337
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v4, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSourceInt:I

    if-eq v5, v2, :cond_3

    const-string v2, "open_camera_mode"

    .line 339
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-nez p1, :cond_3

    iget-boolean p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-nez p1, :cond_3

    if-eqz v0, :cond_7

    .line 341
    :cond_3
    iget-boolean p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-nez p1, :cond_4

    iget-boolean p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    iget-object p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 342
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSourceInt:I

    if-ne v5, p1, :cond_5

    .line 344
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetMoreModeToNormal()V

    .line 346
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p1, :cond_6

    .line 347
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateUIState(IILjava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1, v1, v7, v7, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 355
    :cond_7
    iget-boolean p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p1, :cond_8

    .line 356
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setLaunchFromAod(Z)V

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v0, v4, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 359
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVoiceInteraction(Z)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f110389

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 364
    :cond_9
    sget-object p1, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntentTasks mIsVoiceInteractionRoot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-boolean p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    if-eqz p1, :cond_a

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v0, v4, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v1, v4, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    iget v2, v4, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {p1, v0, v1, v7, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    .line 369
    :cond_a
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/CameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    return-void
.end method

.method protected onPauseTasks()V
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onPauseTasks()V

    .line 388
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenRelay;->pause()V

    return-void
.end method

.method protected onRestartTasks()V
    .locals 0

    .line 303
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onRestartTasks()V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz p0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenSize()V

    :cond_0
    return-void
.end method

.method protected onResumeTasks()V
    .locals 1

    .line 374
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onResumeTasks()V

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    .line 377
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailFromAod()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getDisplayActivityType()I

    move-result p0

    sget v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_AOD:I

    if-eq p0, v0, :cond_1

    .line 381
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->PRIMARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->switchScreen(Lcom/transsion/camera/manager/ScreenRelay$Screen;)V

    :cond_1
    return-void
.end method

.method protected onThumbnailUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 120
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbnailUpdate uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected processFoldingFeatureState(I)V
    .locals 3

    .line 563
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->processFoldingFeatureState(I)V

    .line 564
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_PROCESS_FOLD_STATE, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->processFoldingFeatureState(Landroid/content/Context;I)V

    return-void
.end method

.method protected processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    if-nez p2, :cond_0

    .line 129
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataStore is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 135
    :cond_1
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 138
    :cond_2
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    if-eqz v0, :cond_3

    .line 139
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 141
    :cond_3
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    if-eqz v0, :cond_4

    .line 142
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 144
    :cond_4
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    if-eqz v0, :cond_5

    .line 145
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 147
    :cond_5
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz v0, :cond_6

    .line 148
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 150
    :cond_6
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-eqz v0, :cond_7

    .line 151
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 153
    :cond_7
    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-eqz p1, :cond_8

    .line 154
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V

    :cond_8
    return-void
.end method

.method protected processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_0

    .line 251
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mModeManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "wideCameraId isn\'t exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_1
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-nez v0, :cond_3

    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz p1, :cond_5

    .line 263
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected showErrorAndFinish(I)V
    .locals 4

    .line 444
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->showErrorAndFinish(I)V

    .line 446
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorAndFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsResumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 451
    :cond_0
    new-instance v1, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 455
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x7f110118

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    .line 456
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    .line 457
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 458
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 459
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x104000a

    .line 460
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_2
    :goto_0
    const-string p0, "[showErrorAndFinish] activity is finishing, do noting"

    .line 462
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected showExternalStorageUnmountedTip()V
    .locals 2

    .line 282
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showExternalStorageUnmountedTip()V

    .line 283
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    const v1, 0x7f100115

    .line 284
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showLowStorageTip()V
    .locals 2

    .line 570
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLowStorageTip()V

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const v1, 0x7f1002db

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showThermalThrottleUrgent()V
    .locals 3

    .line 553
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showThermalThrottleUrgent()V

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v1

    const-string v2, "isSecureCamera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final updateThumbnailFromAod()V
    .locals 3

    .line 392
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnailFromAod mThumbnailFromAod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailFromAod:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailFromAod:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailFromAod:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
