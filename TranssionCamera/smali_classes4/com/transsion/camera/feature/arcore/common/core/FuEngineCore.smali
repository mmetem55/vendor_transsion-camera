.class public Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;
.super Lcom/faceunity/pta_art/core/base/BaseCore;
.source "FuEngineCore.java"


# static fields
.field private static final ITEM_ARRAYS_COUNT:I = 0x3

.field static final PRINT_TIMES:I = 0x28

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_OUT:I = 0x320


# instance fields
.field private final configItems:[I

.field isFirstRenderer:Z

.field private mAvatarHandle:Lcom/faceunity/pta_art/core/AvatarHandle;

.field private mCurrentInfo:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

.field private volatile mDrawNotReady:Z

.field private final mGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

.field private final mItemsArray:[I

.field private final mReleaseLock:Lcom/transsion/camera/utils/StateWait;

.field private final mRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

.field private final mResourceCallback:Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;

.field times:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FuEngineCore"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;Lcom/transsion/camera/feature/arcore/common/preview/IResourceRequester;Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;)V
    .locals 5

    .line 143
    invoke-direct {p0, p1, p2, p4}, Lcom/faceunity/pta_art/core/base/BaseCore;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;)V

    const/4 p4, 0x3

    new-array p4, p4, [I

    .line 29
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 30
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->configItems:[I

    .line 33
    new-instance v1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mReleaseLock:Lcom/transsion/camera/utils/StateWait;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mDrawNotReady:Z

    .line 38
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

    .line 78
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$2;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mResourceCallback:Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;

    .line 203
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->isFirstRenderer:Z

    .line 204
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->times:I

    .line 144
    new-instance v4, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    .line 145
    invoke-interface {p2, v2}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->setGLSurfaceStateCallback(Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;)V

    .line 146
    invoke-interface {p3, v3}, Lcom/transsion/camera/feature/arcore/common/preview/IResourceRequester;->setResourceDestoryCallback(Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;)V

    aput v1, p4, v1

    aput v1, p4, v0

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mCurrentInfo:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->configItems:[I

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->setGlobalParam()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mDrawNotReady:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mDrawNotReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->initControllerAndConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/utils/StateWait;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mReleaseLock:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/base/FUItemHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/base/FUItemHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mAvatarHandle:Lcom/faceunity/pta_art/core/AvatarHandle;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/AvatarHandle;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mAvatarHandle:Lcom/faceunity/pta_art/core/AvatarHandle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->uninitControllerAndConfig()V

    return-void
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mCurrentInfo:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    return-object p0
.end method

.method private initControllerAndConfig()V
    .locals 4

    .line 86
    new-instance v0, Lcom/faceunity/pta_art/core/AvatarHandle;

    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$3;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    iget-object v3, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mICaptureOperator:Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/faceunity/pta_art/core/AvatarHandle;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;Ljava/lang/Runnable;Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mAvatarHandle:Lcom/faceunity/pta_art/core/AvatarHandle;

    .line 92
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mCurrentInfo:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->setAvatar(Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V

    return-void
.end method

.method private setGlobalParam()V
    .locals 5

    const v0, 0x4109999a    # 8.6f

    .line 135
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetFaceProcessorFov(F)I

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v2, "enable_render_camera"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    aget p0, p0, v1

    const-string v0, "use_facebeauty_order"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method private uninitControllerAndConfig()V
    .locals 4

    .line 121
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily uninitControllerAndConfig controller handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",config handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->configItems:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->itemsArray()[I

    move-result-object v0

    aget v0, v0, v3

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->configItems:[I

    invoke-static {v0, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->configItems:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->configItems:[I

    aput v3, v0, v3

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    aput v3, v0, v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    aget v0, v0, v3

    if-lez v0, :cond_1

    .line 129
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    aput v3, p0, v3

    :cond_1
    return-void
.end method


# virtual methods
.method public getRendererHelper()Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    return-object p0
.end method

.method public isValidCurrAvatar()Z
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mCurrentInfo:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 168
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "lily isValidCurrAvatar false"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz p0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBodyFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public itemsArray()[I
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mItemsArray:[I

    return-object p0
.end method

.method public moduleSwitchStart(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mAvatarHandle:Lcom/faceunity/pta_art/core/AvatarHandle;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mDrawNotReady:Z

    .line 162
    :cond_0
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moduleSwitchStart mDrawNotReady "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mDrawNotReady:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraChange()V
    .locals 2

    .line 190
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$5;

    const-string v1, "onCameraChange"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$5;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->onDestroy()V

    .line 154
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDrawFrame([BIIIII[F)I
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    .line 210
    iget-boolean v2, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mDrawNotReady:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 213
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_2

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 246
    :cond_1
    iget-object v7, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/high16 v8, 0x10000

    iget v11, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFrameId:I

    add-int/lit8 v2, v11, 0x1

    iput v2, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFrameId:I

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->itemsArray()[I

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v9, p4

    move/from16 v10, p5

    .line 246
    invoke-static/range {v7 .. v13}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesToCurrentFBO(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[II)I

    goto/16 :goto_1

    .line 216
    :cond_2
    iget-boolean v2, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->isFirstRenderer:Z

    if-eqz v2, :cond_3

    .line 217
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processFrameFaceCapture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v8, 0x10000

    .line 220
    iget v11, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFrameId:I

    add-int/lit8 v2, v11, 0x1

    iput v2, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFrameId:I

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->itemsArray()[I

    move-result-object v12

    const/4 v13, 0x0

    move-object v7, p1

    move/from16 v9, p4

    move/from16 v10, p5

    .line 220
    invoke-static/range {v7 .. v13}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesWithCameraToCurrentFBO([BIIII[II)I

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->getBoundingBox()[F

    move-result-object v7

    if-eqz v7, :cond_5

    .line 226
    array-length v8, v7

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    const v8, 0x3df5c28f    # 0.12f

    .line 229
    aget v9, p7, v3

    .line 230
    aget v10, p7, v6

    .line 231
    aget v11, p7, v2

    .line 233
    aget v12, v7, v3

    sub-float/2addr v12, v8

    cmpl-float v12, v9, v12

    if-lez v12, :cond_5

    const/4 v12, 0x3

    aget v12, v7, v12

    add-float/2addr v12, v8

    cmpg-float v9, v9, v12

    if-gez v9, :cond_5

    aget v9, v7, v6

    sub-float/2addr v9, v8

    cmpl-float v9, v10, v9

    if-lez v9, :cond_5

    const/4 v9, 0x4

    aget v9, v7, v9

    add-float/2addr v9, v8

    cmpg-float v9, v10, v9

    if-gez v9, :cond_5

    aget v2, v7, v2

    sub-float/2addr v2, v8

    cmpl-float v2, v11, v2

    if-lez v2, :cond_5

    const/4 v2, 0x5

    aget v2, v7, v2

    add-float/2addr v2, v8

    cmpg-float v2, v11, v2

    if-gez v2, :cond_5

    move v2, v6

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    if-nez v2, :cond_6

    .line 241
    iget-object v7, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/high16 v8, 0x10000

    iget v11, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFrameId:I

    add-int/lit8 v2, v11, 0x1

    iput v2, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFrameId:I

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->itemsArray()[I

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v9, p4

    move/from16 v10, p5

    .line 241
    invoke-static/range {v7 .. v13}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesToCurrentFBO(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[II)I

    .line 250
    :cond_6
    :goto_1
    iget-boolean v2, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->isFirstRenderer:Z

    if-eqz v2, :cond_7

    .line 251
    iget v2, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->times:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->times:I

    .line 252
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renderer type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/faceunity/pta_art/core/base/BaseCore;->RENDER_TYPE_MAP:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " begin "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->times:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frame spend : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms on thread : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->times:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_7

    .line 255
    iput v3, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->times:I

    .line 256
    iput-boolean v3, v0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->isFirstRenderer:Z

    :cond_7
    return v3
.end method

.method public setAvatar(Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V
    .locals 5

    .line 265
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mCurrentInfo:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mAvatarHandle:Lcom/faceunity/pta_art/core/AvatarHandle;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iget-boolean v2, p1, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->reloadHead:Z

    iget v3, p1, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->currentModeId:I

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->setAvatar(Lcom/faceunity/pta_art/entity/AvatarPTA;ZILjava/lang/Runnable;)V

    return-void

    .line 267
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lily setAvatar info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;)Z
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->mRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->setBackground(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
