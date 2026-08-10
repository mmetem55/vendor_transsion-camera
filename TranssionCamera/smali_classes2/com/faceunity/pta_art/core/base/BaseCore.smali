.class public abstract Lcom/faceunity/pta_art/core/base/BaseCore;
.super Ljava/lang/Object;
.source "BaseCore.java"


# static fields
.field private static final FU_ITEM_THREAD:Ljava/lang/String; = "FUItemHandlerThread"

.field private static final RECORDING_DURATION:I = 0x3c8c

.field public static final RENDER_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TYPE_FU_RENDER_ANIMOJI:I = 0x1

.field public static final TYPE_FU_RENDER_ARCORE:I = 0x0

.field public static final TYPE_FU_RENDER_FACE_EDIT:I = 0x2


# instance fields
.field private final TIME_OUT:J

.field protected final avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

.field protected landmarksData:[F

.field private final mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private final mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

.field private final mFUItemHandlerThread:Landroid/os/HandlerThread;

.field protected mFrameId:I

.field private final mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

.field protected final mICaptureOperator:Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;

.field public final mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

.field private volatile mIsRecording:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingStartTime:J

.field private final mStateLock:Lcom/transsion/camera/utils/StateWait;

.field private mValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseCore"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "force init faceunity 65536"

    .line 40
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/faceunity/pta_art/core/base/BaseCore$1;

    invoke-direct {v0}, Lcom/faceunity/pta_art/core/base/BaseCore$1;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/core/base/BaseCore;->RENDER_TYPE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    const/16 v0, 0x96

    new-array v0, v0, [F

    .line 47
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->landmarksData:[F

    const-wide/16 v0, 0x1f4

    .line 55
    iput-wide v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->TIME_OUT:J

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v0}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIsRecording:Z

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mValue:D

    .line 194
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mContext:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    .line 196
    iput-object p3, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mICaptureOperator:Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;

    .line 197
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 198
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mNextEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 199
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 200
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 201
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FUItemHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    .line 202
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance p2, Lcom/faceunity/pta_art/core/base/FUItemHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p3, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, p3}, Lcom/faceunity/pta_art/core/base/FUItemHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    .line 204
    new-instance p1, Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    invoke-direct {p1}, Lcom/faceunity/wrapper/faceunity$AvatarInfo;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/16 p2, 0x39

    new-array p2, p2, [F

    .line 205
    iput-object p2, p1, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mExpression:[F

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 206
    iput-object p2, p1, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotation:[F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 207
    iput-object p2, p1, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mPupilPos:[F

    const/4 p2, 0x1

    new-array p2, p2, [F

    .line 208
    iput-object p2, p1, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    .line 209
    new-instance p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    invoke-direct {p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    return-void
.end method

.method static synthetic access$000(Lcom/faceunity/pta_art/core/base/BaseCore;)Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/faceunity/pta_art/core/base/BaseCore;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/faceunity/pta_art/core/base/BaseCore;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$202(Lcom/faceunity/pta_art/core/base/BaseCore;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$300(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/util/List;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;D)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/lang/String;D)V

    return-void
.end method

.method static synthetic access$600(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;[D)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/lang/String;[D)V

    return-void
.end method

.method static synthetic access$702(Lcom/faceunity/pta_art/core/base/BaseCore;D)D
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mValue:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/faceunity/pta_art/core/base/BaseCore;)Lcom/transsion/camera/utils/StateWait;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method public static destroyFURenderer()V
    .locals 1

    const/16 v0, 0x400

    .line 189
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuReleaseAIModel(I)I

    .line 190
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyLibData()V

    return-void
.end method

.method private doResetAction(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->isFuItemThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 347
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 349
    invoke-direct {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/util/List;)V

    .line 350
    sget-object p0, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "fuItemSetParam"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v1, Lcom/faceunity/pta_art/core/base/BaseCore$4;

    invoke-direct {v1, p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore$4;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private final fuItemSetParam(Ljava/lang/String;D)V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    .line 219
    invoke-static {p0, p1, p2, p3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method private final fuItemSetParam(Ljava/lang/String;[D)V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    .line 225
    invoke-static {p0, p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method private final fuItemSetParam(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    .line 232
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->key:Ljava/lang/String;

    iget-wide v2, v0, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->value:D

    invoke-static {p0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final handleAfterDrawEvents()V
    .locals 7

    .line 161
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/core/base/Task;

    if-nez v0, :cond_2

    :goto_1
    return-void

    .line 169
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 170
    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/Task;->run()V

    .line 171
    iget-object v3, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    sget-object v3, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily handleAfterDrawEvents task = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; time = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final handleEvents()V
    .locals 7

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/core/base/Task;

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 152
    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/Task;->run()V

    .line 153
    iget-object v3, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    sget-object v3, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily handleEvents task = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; time = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final handleNextEvents()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mNextEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mNextEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private final isFuItemThread()Z
    .locals 1

    .line 213
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final afterDrawFrame()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->handleAfterDrawEvents()V

    return-void
.end method

.method public final clearEvents()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 185
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mNextEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public dequeueAfterDrawEvent(Ljava/lang/String;)V
    .locals 3

    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 533
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_art/core/base/Task;

    .line 535
    iget-object v2, v1, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dequeuePostEvent(Ljava/lang/String;)V
    .locals 3

    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_art/core/base/Task;

    .line 518
    iget-object v2, v1, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public frameAvailable([FII)V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->frameAvailable([FIIZ)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mRecordingStartTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3c8c

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 140
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mICaptureOperator:Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->stopVideoRecorder(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V

    :cond_0
    return-void
.end method

.method public getBoundingBox()[F
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object p0

    aget p0, p0, v1

    const-string v0, "boundingbox"

    invoke-static {p0, v0}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParamfv(ILjava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public getLandmarksData()[F
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->landmarksData:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 551
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->landmarksData:[F

    const/4 v1, 0x0

    const-string v2, "landmarks"

    invoke-static {v1, v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    .line 552
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->landmarksData:[F

    return-object p0
.end method

.method public abstract getRendererHelper()Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;
.end method

.method public isRecording()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIsRecording:Z

    return p0
.end method

.method public abstract isValidCurrAvatar()Z
.end method

.method public itemBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;
    .locals 1

    .line 575
    new-instance v0, Lcom/faceunity/pta_art/core/base/BaseCore$10;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/faceunity/pta_art/core/base/BaseCore$10;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;II)V

    return-object v0
.end method

.method public itemDestoryRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;
    .locals 1

    .line 601
    new-instance v0, Lcom/faceunity/pta_art/core/base/BaseCore$12;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/faceunity/pta_art/core/base/BaseCore$12;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;II)V

    return-object v0
.end method

.method public final itemGetParam(Ljava/lang/String;)D
    .locals 2

    .line 404
    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 406
    invoke-static {v0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParam(ILjava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 409
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v1, Lcom/faceunity/pta_art/core/base/BaseCore$7;

    invoke-direct {v1, p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore$7;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :try_start_0
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 426
    :goto_0
    iget-wide p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mValue:D

    return-wide p0
.end method

.method public final itemSetParam(Ljava/lang/String;D)V
    .locals 2

    .line 376
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->isFuItemThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/lang/String;D)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v1, Lcom/faceunity/pta_art/core/base/BaseCore$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BaseCore$5;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final itemSetParam(Ljava/lang/String;[D)V
    .locals 2

    .line 389
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->isFuItemThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/lang/String;[D)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v1, Lcom/faceunity/pta_art/core/base/BaseCore$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BaseCore$6;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;[D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public itemUnBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;
    .locals 1

    .line 588
    new-instance v0, Lcom/faceunity/pta_art/core/base/BaseCore$11;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/faceunity/pta_art/core/base/BaseCore$11;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;II)V

    return-object v0
.end method

.method public abstract itemsArray()[I
.end method

.method public abstract moduleSwitchStart(Z)V
.end method

.method public abstract onCameraChange()V
.end method

.method public onDestroy()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 461
    :try_start_0
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 463
    sget-object v0, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Interrupted while trying to join mRespondThread"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract onDrawFrame([BIIIII[F)I
.end method

.method public final postDrawFrame()V
    .locals 7

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/core/base/Task;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/Task;->run()V

    .line 92
    iget-object v3, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    sget-object v3, Lcom/faceunity/pta_art/core/base/BaseCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily postDrawFrame task = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; time = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareDrawFrame()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->handleEvents()V

    .line 81
    invoke-direct {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->handleNextEvents()V

    return-void
.end method

.method public queueAfterDrawEvent(Lcom/faceunity/pta_art/core/base/Task;)V
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mAfterDrawEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queueEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;)V"
        }
    .end annotation

    .line 542
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public queueNextEvent(Lcom/faceunity/pta_art/core/base/Task;)V
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mNextEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queuePostEvent(Lcom/faceunity/pta_art/core/base/Task;)V
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mPostEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetAll(Z)V
    .locals 2

    const-wide/high16 v0, -0x3f87000000000000L    # -400.0

    .line 254
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAll(ZD)V

    return-void
.end method

.method public final resetAll(ZD)V
    .locals 5

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_scale"

    invoke-direct {v1, v2, p2, p3}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_angle"

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "reset_all"

    const-string p3, "target_trans"

    if-eqz p1, :cond_0

    .line 241
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-direct {p1, p3, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    invoke-direct {p1, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 249
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    .line 250
    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->doResetAction(Ljava/util/List;)V

    return-void
.end method

.method public resetAllBottom()V
    .locals 5

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_scale"

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_trans"

    const-wide v3, 0x4062c00000000000L    # 150.0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_angle"

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "reset_all"

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->doResetAction(Ljava/util/List;)V

    return-void
.end method

.method public final resetAllFold(Z)V
    .locals 2

    const-wide v0, -0x3f6f980000000000L    # -1050.0

    .line 259
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAll(ZD)V

    return-void
.end method

.method public resetAllMin(Z)V
    .locals 2

    const-wide v0, -0x3f7bb00000000000L    # -650.0

    .line 335
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllMin(ZD)V

    return-void
.end method

.method public resetAllMin(ZD)V
    .locals 3

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_scale"

    invoke-direct {v1, v2, p2, p3}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_trans"

    const-wide v1, 0x405b800000000000L    # 110.0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_angle"

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "reset_all"

    if-eqz p1, :cond_0

    .line 320
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_0
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 325
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    .line 326
    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->doResetAction(Ljava/util/List;)V

    return-void
.end method

.method public resetAllMinFold(Z)V
    .locals 2

    const-wide/high16 v0, -0x3f67000000000000L    # -1600.0

    .line 331
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllMin(ZD)V

    return-void
.end method

.method public resetAllTop(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllTop(ZD)V

    return-void
.end method

.method public final resetAllTop(ZD)V
    .locals 3

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_scale"

    invoke-direct {v1, v2, p2, p3}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_trans"

    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_angle"

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "reset_all"

    if-eqz p1, :cond_0

    .line 268
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_0
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 273
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    .line 274
    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->doResetAction(Ljava/util/List;)V

    return-void
.end method

.method public resetAllTopFold(Z)V
    .locals 2

    const-wide v0, -0x3f90c00000000000L    # -250.0

    .line 279
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllTop(ZD)V

    return-void
.end method

.method public resetForBodyMoji(Z)V
    .locals 2

    const-wide v0, -0x3f80c00000000000L    # -500.0

    .line 302
    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetForBodyMoji(ZD)V

    return-void
.end method

.method public resetForBodyMoji(ZD)V
    .locals 3

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "target_scale"

    invoke-direct {v1, v2, p2, p3}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_trans"

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string p3, "target_angle"

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "reset_all"

    if-eqz p1, :cond_0

    .line 292
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_0
    iget-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 297
    iput-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    .line 298
    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->doResetAction(Ljava/util/List;)V

    return-void
.end method

.method public final runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 434
    iget-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v0, Lcom/faceunity/pta_art/core/base/BaseCore$8;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore$8;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 441
    :cond_1
    iget-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    new-instance v0, Lcom/faceunity/pta_art/core/base/BaseCore$9;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore$9;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final runOnFuItemThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract setAvatar(Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V
.end method

.method public abstract setBackground(Ljava/lang/String;)Z
.end method

.method public setParam()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->fuItemSetParam(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public startVideoRecorder(IILcom/transsion/camera/app/common/mode/VideoFileSpec;I)V
    .locals 8

    .line 107
    iget-boolean v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIsRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v7, Lcom/faceunity/pta_art/core/base/BaseCore$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/faceunity/pta_art/core/base/BaseCore$2;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/app/common/mode/VideoFileSpec;III)V

    invoke-interface {v0, v7}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopVideoRecorder(Ljava/lang/Runnable;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/faceunity/pta_art/core/base/BaseCore$3;

    invoke-direct {v1, p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore$3;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackFaceRect([BII)[F
    .locals 4

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    if-gtz p3, :cond_0

    goto :goto_2

    .line 559
    :cond_0
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetCurrentRotationMode()I

    move-result p0

    const/4 v0, 0x0

    .line 560
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 561
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    const/4 v1, 0x4

    new-array v1, v1, [F

    move v2, v0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    .line 564
    invoke-static {p1, v3, p2, p3}, Lcom/faceunity/wrapper/faceunity;->fuTrackFace([BIII)I

    .line 565
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuIsTracking()I

    move-result v3

    if-lez v3, :cond_1

    const-string p1, "face_rect"

    .line 566
    invoke-static {v0, p1, v1}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
