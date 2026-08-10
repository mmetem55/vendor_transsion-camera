.class Lcom/bef/effectsdk/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bef/effectsdk/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bef/effectsdk/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1055
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1595
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 1056
    iput v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    .line 1057
    iput v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    .line 1058
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1059
    iput v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    .line 1060
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lcom/bef/effectsdk/GLTextureView$GLThread;Z)Z
    .locals 0

    .line 1053
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1104
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$EglHelper;

    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    const/4 v0, 0x0

    .line 1105
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1106
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v3, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 1122
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1124
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1125
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    move-object/from16 v18, v3

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1129
    :cond_0
    iget-boolean v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_1

    .line 1130
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    .line 1131
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView;->onExitContext()V

    .line 1132
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1398
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1399
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1401
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1137
    :cond_1
    :try_start_3
    iget-boolean v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 1139
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    .line 1140
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "GLThread"

    move/from16 v17, v0

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    const/16 v17, 0x0

    .line 1147
    :goto_3
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_3

    const-string v0, "GLThread"

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    .line 1152
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView;->onExitContext()V

    .line 1153
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    .line 1155
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v11, 0x1

    :cond_3
    if-eqz v7, :cond_4

    .line 1161
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    .line 1162
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView;->onExitContext()V

    .line 1163
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1164
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v7, 0x0

    :cond_4
    if-eqz v17, :cond_5

    .line 1169
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    const-string v0, "GLThread"

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v17, :cond_8

    .line 1177
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_8

    .line 1178
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    .line 1180
    :cond_6
    invoke-static {v0}, Lcom/bef/effectsdk/GLTextureView;->access$900(Lcom/bef/effectsdk/GLTextureView;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    .line 1181
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1182
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    const-string v0, "GLThread"

    .line 1184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v17, :cond_9

    .line 1191
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1192
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->finish()V

    const-string v0, "GLThread"

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminating EGL because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_9
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_b

    const-string v0, "GLThread"

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_a

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/4 v0, 0x1

    .line 1207
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 1208
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1209
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1213
    :cond_b
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_c

    const-string v0, "GLThread"

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1217
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1218
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v10, :cond_d

    const-string v0, "GLThread"

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1227
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1228
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1232
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1235
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_f

    if-eqz v11, :cond_e

    move/from16 v4, v19

    const/4 v11, 0x0

    goto :goto_5

    .line 1238
    :cond_e
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 1240
    :try_start_4
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 1245
    :try_start_5
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1248
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1242
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    .line 1243
    throw v0

    :cond_f
    move/from16 v4, v19

    .line 1252
    :goto_5
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1253
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    .line 1259
    :cond_10
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1f

    .line 1260
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_11

    .line 1262
    iget v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    .line 1263
    iget v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    const-string v3, "GLThread"

    .line 1266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noticing that we want render notification tid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1266
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1274
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    move v12, v0

    move v13, v2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 1276
    :goto_6
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1277
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1299
    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v5, :cond_13

    :try_start_6
    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    .line 1303
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1306
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v3, 0x1

    .line 1307
    :try_start_7
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1308
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1309
    monitor-exit v2

    move v5, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1311
    :cond_12
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v3, 0x1

    .line 1312
    :try_start_9
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1313
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1314
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1315
    monitor-exit v2

    move-object/from16 v3, v18

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_13
    :goto_8
    if-eqz v6, :cond_14

    .line 1322
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    .line 1324
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move v6, v0

    goto :goto_9

    :cond_14
    move-object/from16 v3, v18

    :goto_9
    if-eqz v4, :cond_16

    const-string v2, "GLThread"

    const-string v4, "onSurfaceCreated"

    .line 1330
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/GLTextureView;

    if-eqz v2, :cond_15

    .line 1334
    invoke-static {v2}, Lcom/bef/effectsdk/GLTextureView;->access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v4, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    iget-object v4, v4, Lcom/bef/effectsdk/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_15
    move v4, v0

    :cond_16
    if-eqz v14, :cond_17

    .line 1340
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_17
    if-eqz v8, :cond_19

    const-string v2, "GLThread"

    .line 1347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSurfaceChanged("

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/GLTextureView;

    if-eqz v2, :cond_18

    .line 1351
    invoke-static {v2}, Lcom/bef/effectsdk/GLTextureView;->access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v3, v12, v13}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v8, v0

    :cond_19
    const-string v2, "GLThread"

    .line 1357
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDrawFrame tid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v4

    move v0, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/GLTextureView;

    if-eqz v2, :cond_1a

    .line 1362
    invoke-static {v2}, Lcom/bef/effectsdk/GLTextureView;->access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1365
    :cond_1a
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->swap()I

    move-result v2

    const/16 v4, 0x3000

    if-eq v2, v4, :cond_1c

    const/16 v4, 0x300e

    if-eq v2, v4, :cond_1b

    const-string v4, "GLThread"

    const-string v5, "eglSwapBuffers"

    .line 1380
    invoke-static {v4, v5, v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1382
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v4, 0x1

    .line 1383
    :try_start_b
    iput-boolean v4, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1384
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1385
    monitor-exit v2

    goto :goto_a

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    :cond_1b
    const/4 v4, 0x1

    const-string v2, "GLThread"

    .line 1371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "egl context lost tid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v7, 0x1

    goto :goto_b

    :cond_1c
    :goto_a
    move-object v15, v3

    :goto_b
    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    :cond_1d
    move v5, v0

    move-object v3, v15

    move/from16 v4, v17

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1e
    move/from16 v4, v19

    :cond_1f
    :try_start_d
    const-string v0, "GLThread"

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFinishedCreatingEglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSurfaceIsBad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWaitingForSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestRender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mRenderMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move/from16 v4, v16

    move-object/from16 v3, v18

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 1299
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 1398
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1399
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1401
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1402
    throw v0

    :catchall_6
    move-exception v0

    .line 1401
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1410
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1097
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1100
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1087
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1088
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1406
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->readyToDraw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1426
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1427
    :try_start_0
    iget p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 5

    .line 1476
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1480
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1481
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1482
    :goto_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    .line 1484
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    :try_start_1
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1489
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1492
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onResume()V
    .locals 5

    .line 1496
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1500
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1501
    iput-boolean v2, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1502
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1503
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1504
    :goto_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    .line 1506
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    :try_start_1
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1511
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1514
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onWindowResize(II)V
    .locals 3

    .line 1518
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1519
    :try_start_0
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    .line 1520
    iput p2, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1521
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1522
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1523
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1524
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1527
    :goto_0
    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Main thread"

    .line 1530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    :try_start_1
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1535
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1538
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1570
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1571
    :try_start_0
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1573
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1568
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1544
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1545
    :try_start_0
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldExit:Z

    .line 1546
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1547
    :goto_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1549
    :try_start_1
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1551
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1554
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 1558
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1559
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1432
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1433
    :try_start_0
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1434
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1435
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :try_start_0
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :catch_0
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->threadExiting(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->threadExiting(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    .line 1078
    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1419
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1420
    :try_start_0
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    .line 1421
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1417
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceCreated()V
    .locals 5

    .line 1439
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1443
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1444
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1445
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1446
    :goto_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1450
    :try_start_1
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1452
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1455
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public surfaceDestroyed()V
    .locals 5

    .line 1459
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1463
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    .line 1464
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1465
    :goto_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1467
    :try_start_1
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1469
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1472
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
