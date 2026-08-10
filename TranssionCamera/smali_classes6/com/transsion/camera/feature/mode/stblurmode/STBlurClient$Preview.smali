.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;
.super Ljava/lang/Object;
.source "STBlurClient.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/stblurmode/ISTBlurPreview;
.implements Lcom/transsion/camera/feature/mode/stblurmode/ISTBlurPreview$GLPreviewController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Preview"
.end annotation


# static fields
.field private static final BLUR_LEVEL:F = 1.0f

.field private static final DO_ANOTHER_THREAD:Z = true

.field private static final PROCESS_INTERVAL:I = 0x1

.field private static final ST_OK:I = 0x0

.field private static final USE_FIGURE_SEGMENT:Z = true

.field private static final USE_GRADUAL_BLUR:Z = true


# instance fields
.field private final GRADUAL_BLUR_WEIGHT:[F

.field private mContext:Landroid/content/Context;

.field private final mProcessFrame:I

.field private mProcessFrameNumber:I

.field private final mReleaseLock:Ljava/lang/Object;

.field private volatile mRenderInit:Z

.field private mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

.field private mYuvData:[B

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 100
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mProcessFrameNumber:I

    .line 119
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mReleaseLock:Ljava/lang/Object;

    .line 122
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->checkLicense(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/stblurmode/R$integer;->stblur_preview_process_frame:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mProcessFrame:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private checkLicense(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 129
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "no license file !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/singleblur/faceapi/LicenseHelper;->initLicense(Ljava/lang/String;)I

    move-result p0

    .line 132
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "license Check resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceShowInsideModel()V

    return-void
.end method


# virtual methods
.method public drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 3

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 212
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "draw mSTBlurPreview is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 216
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mRenderInit:Z

    if-eqz p1, :cond_2

    .line 217
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSTBlurRender surfaceWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {p1, p5, p4}, Lcom/singleblur/blur/STBlurPreview;->initRender(II)I

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur initRender failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 223
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mRenderInit:Z

    :cond_2
    const/4 p1, 0x0

    const/4 p4, 0x1

    if-eqz p3, :cond_6

    if-eq p3, p4, :cond_3

    goto :goto_4

    .line 243
    :cond_3
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    .line 244
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v0

    goto :goto_1

    :cond_5
    :goto_0
    move p0, p4

    .line 243
    :goto_1
    invoke-virtual {p3, p2, p5, p1, p0}, Lcom/singleblur/blur/STBlurPreview;->processTextureGradual(I[F[IZ)I

    move-result p0

    if-eqz p0, :cond_9

    .line 245
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur process2DTexture failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 228
    :cond_6
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    .line 229
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move p0, v0

    goto :goto_3

    :cond_8
    :goto_2
    move p0, p4

    .line 228
    :goto_3
    invoke-virtual {p3, p2, p5, p1, p0}, Lcom/singleblur/blur/STBlurPreview;->processOESTextureGradual(I[F[IZ)I

    move-result p0

    if-eqz p0, :cond_9

    .line 230
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur processOESTexture failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_9
    :goto_4
    return p4
.end method

.method public initPreviewBlurGLThread()V
    .locals 4

    .line 189
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initPreviewBlurGLThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/singleblur/blur/STBlurPreview;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/4 v0, 0x0

    .line 191
    invoke-static {v0}, Lcom/singleblur/blur/STBlurPreview;->setDebug(Z)I

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {v1, v0}, Lcom/singleblur/blur/STBlurPreview;->setDebugMask(Z)I

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/16 v1, 0x1001

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/singleblur/blur/STBlurPreview;->setFrontCamera(Z)V

    return-void
.end method

.method public initRender()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mRenderInit:Z

    .line 151
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initRender"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initSTBlur()V
    .locals 1

    .line 139
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initSTBlur"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public processPreviewBlur([BIII)V
    .locals 9

    .line 156
    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mProcessFrameNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mProcessFrameNumber:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mProcessFrame:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mYuvData:[B

    const/16 v0, 0x10

    const/16 v1, 0x11

    if-ne p4, v1, :cond_1

    .line 164
    sget-object p4, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    const/16 v0, 0x18

    goto :goto_0

    .line 167
    :cond_1
    sget-object p4, Lcom/singleblur/faceapi/model/CvPixelFormat;->YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

    :goto_0
    if-nez p1, :cond_2

    .line 171
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "processPreviewBlur mYuvData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mReleaseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-nez v1, :cond_3

    .line 177
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "processPreviewBlur mSTBlurPreview is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    monitor-exit p1

    return-void

    .line 180
    :cond_3
    invoke-virtual {v1, p4}, Lcom/singleblur/blur/STBlurPreview;->setFormat(Lcom/singleblur/faceapi/model/CvPixelFormat;)V

    .line 181
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {p4, v0}, Lcom/singleblur/blur/STBlurPreview;->setSegmentOption(I)V

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mYuvData:[B

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    .line 183
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v3, p2

    move v4, p3

    .line 182
    invoke-virtual/range {v1 .. v8}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V

    .line 184
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unInitPreviewBlurGLThread()V
    .locals 2

    .line 199
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "unInitPreviewBlurGLThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/singleblur/blur/STBlurPreview;->destroy()I

    const/4 v1, 0x0

    .line 203
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    .line 205
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unInitSTBlur()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "unInitSTBlur"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->mProcessFrameNumber:I

    return-void
.end method
