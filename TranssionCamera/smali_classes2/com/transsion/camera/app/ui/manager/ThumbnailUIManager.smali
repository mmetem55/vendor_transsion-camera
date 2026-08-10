.class public Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "ThumbnailUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultTaskCallback:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

.field private mIsCapturing:Z

.field private mIsContinuesCapture:Z

.field private mIsRecording:Z

.field private mNotAllowShowShareUI:Z

.field private mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

.field private mTaskCallbackWithListener:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

.field private mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

.field private mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

.field private mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v7, p3

    .line 56
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNotAllowShowShareUI:Z

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance p1, Lcom/transsion/camera/app/ui/ThumbnailUI;

    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ThumbnailUI;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    .line 59
    new-instance p1, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    invoke-direct {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    .line 60
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mTaskCallbackWithListener:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    .line 84
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mDefaultTaskCallback:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;Z)V
    .locals 1

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 106
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "is_support_photo_video_share"

    invoke-static {p4, v0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p5, :cond_0

    if-eqz p1, :cond_0

    .line 108
    new-instance p1, Lcom/transsion/camera/app/ui/ShareUI;

    invoke-direct {p1, p3}, Lcom/transsion/camera/app/ui/ShareUI;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/ui/IThumbnailUI;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    return-object p0
.end method


# virtual methods
.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideShareIcon()V

    return-void
.end method

.method public hideShareIcon()V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ShareUI;->hideShareEntryView()V

    :cond_0
    return-void
.end method

.method public isUpdateThumbnail()Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->isUpdateThumbnail()Z

    move-result p0

    return p0
.end method

.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mTaskCallbackWithListener:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mDefaultTaskCallback:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->loadThumbnailByUri(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x6b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x11

    if-eq p1, v2, :cond_2

    const/16 v2, 0xb

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f

    if-eq p1, v2, :cond_1

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_1

    const/16 v2, 0x12

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 238
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNotAllowShowShareUI:Z

    goto :goto_1

    .line 232
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNotAllowShowShareUI:Z

    :cond_3
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 296
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_2

    .line 259
    :sswitch_0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbnailUI enable, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    goto :goto_2

    .line 274
    :sswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideShareIcon()V

    .line 275
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsContinuesCapture:Z

    .line 276
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_2

    .line 253
    :sswitch_2
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    if-nez p1, :cond_4

    .line 254
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    goto :goto_2

    .line 279
    :sswitch_3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    .line 280
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideShareIcon()V

    .line 281
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_2

    .line 269
    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 271
    :sswitch_5
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsRecording:Z

    goto :goto_2

    .line 263
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 265
    :sswitch_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideShareIcon()V

    .line 266
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsRecording:Z

    goto :goto_2

    .line 244
    :sswitch_8
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    goto :goto_2

    .line 247
    :sswitch_9
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 248
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideShareIcon()V

    .line 250
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsContinuesCapture:Z

    goto :goto_2

    .line 292
    :sswitch_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideShareIcon()V

    .line 293
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xb -> :sswitch_a
        0xd -> :sswitch_9
        0xe -> :sswitch_8
        0xf -> :sswitch_6
        0x10 -> :sswitch_4
        0x11 -> :sswitch_a
        0x1b -> :sswitch_3
        0x20 -> :sswitch_2
        0x21 -> :sswitch_a
        0x23 -> :sswitch_1
        0x25 -> :sswitch_a
        0x27 -> :sswitch_a
        0x34 -> :sswitch_a
        0x4a -> :sswitch_a
        0x57 -> :sswitch_0
        0x6b -> :sswitch_a
        0x90 -> :sswitch_7
        0x91 -> :sswitch_5
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/ShareUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 1

    .line 143
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IThumbnailUI;->onOrientationChanged(IZ)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShareUI;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setupViews()V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ShareUI;->setupViews()V

    :cond_0
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 158
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailUI enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShareUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sinkShareUI(ZIZ)V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz p0, :cond_0

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ShareUI;->sinkShareUI(ZIZ)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->unInit()V

    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;)V
    .locals 2

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 208
    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    :cond_0
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 190
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[TranMemoryFlow] available memory when updateThumbnail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;ZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    .line 195
    sget-object v1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateThumbnailUri], needShare"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsRecording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsContinuesCapture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsContinuesCapture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mNotAllowShowShareUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNotAllowShowShareUI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz v2, :cond_0

    .line 197
    invoke-interface {v2, p1, p2, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    :cond_0
    if-eqz p3, :cond_1

    .line 199
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsRecording:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsContinuesCapture:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNotAllowShowShareUI:Z

    if-nez p2, :cond_1

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateThumbnailUri getThumbnailRootTop:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IThumbnailUI;->getThumbnailRootTop()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ,getHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->getThumbnailRootTop()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/ShareUI;->setBottomOffset(I)V

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mShareUI:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShareUI;->updateUri(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
