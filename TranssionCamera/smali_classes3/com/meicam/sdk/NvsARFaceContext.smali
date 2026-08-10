.class public Lcom/meicam/sdk/NvsARFaceContext;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;
    }
.end annotation


# static fields
.field public static final OBJECT_LAND_MARK_TYPE_ANIMAL:I = 0x1

.field public static final OBJECT_LAND_MARK_TYPE_FACE:I = 0x0

.field public static final OBJECT_TRACKING_TYPE_ANIMAL:I = 0x1

.field public static final OBJECT_TRACKING_TYPE_FACE:I


# instance fields
.field m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

.field m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

.field private m_contextInterface:J

.field m_detectActionCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

.field m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

.field m_landmarkCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

.field mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 48
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 49
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    .line 50
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    .line 51
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private createInternalCallback()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    new-instance v0, Lcom/meicam/sdk/NvsARFaceContext$1;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsARFaceContext$1;-><init>(Lcom/meicam/sdk/NvsARFaceContext;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeIsObjectTracking(JI)Z
.end method

.method private native nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V
.end method

.method private native nativeSetDualBufferInputUsed(JZ)V
.end method

.method private native nativeSetReloadCurSticker(JZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsARFaceContext;->release()V

    .line 152
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isFaceTracking()Z
    .locals 3

    .line 57
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 58
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/sdk/NvsARFaceContext;->nativeIsObjectTracking(JI)Z

    move-result p0

    return p0
.end method

.method public isObjectTracking(I)Z
    .locals 2

    .line 63
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeIsObjectTracking(JI)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 137
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeCleanup(J)V

    .line 139
    iput-wide v2, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    :cond_0
    return-void
.end method

.method public setContextCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
    .locals 2

    .line 69
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/meicam/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 78
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setContextDetectActionCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/meicam/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 106
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setContextErrorCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;)V
    .locals 2

    .line 111
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/meicam/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 120
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method protected setContextInterface(J)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    return-void
.end method

.method public setContextLandmarkCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/meicam/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    .line 92
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setDualBufferInputUsed(Z)V
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetDualBufferInputUsed(JZ)V

    return-void
.end method

.method public setReloadCurSticker()V
    .locals 3

    .line 130
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetReloadCurSticker(JZ)V

    return-void
.end method
