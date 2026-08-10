.class Lcom/transsion/algorithm/STBlurClient$Preview;
.super Ljava/lang/Object;
.source "STBlurClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/algorithm/STBlurClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Preview"
.end annotation


# instance fields
.field private GRADUAL_BLUR_WEIGHT:[F

.field private mContext:Landroid/content/Context;

.field private final mProcessFrame:I

.field private mProcessFrameNumber:I

.field private final mReleaseLock:Ljava/lang/Object;

.field private volatile mRenderInit:Z

.field private mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

.field private mYuvData:[B

.field final synthetic this$0:Lcom/transsion/algorithm/STBlurClient;


# direct methods
.method constructor <init>(Lcom/transsion/algorithm/STBlurClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 111
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mProcessFrameNumber:I

    .line 130
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mReleaseLock:Ljava/lang/Object;

    .line 133
    iput-object p2, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mContext:Landroid/content/Context;

    .line 134
    invoke-direct {p0, p3}, Lcom/transsion/algorithm/STBlurClient$Preview;->checkLicense(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/app/common/R$integer;->stblur_preview_process_frame:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mProcessFrame:I

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

    .line 140
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "no license file !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/singleblur/faceapi/LicenseHelper;->initLicense(Ljava/lang/String;)I

    move-result p0

    .line 143
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "license Check resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceShowInsideModel()V

    return-void
.end method


# virtual methods
.method public drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIIII)Z
    .locals 3

    .line 286
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 287
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "draw mSTBlurPreview is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 291
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mRenderInit:Z

    if-eqz p1, :cond_2

    .line 292
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSTBlurRender surfaceWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {p1, p6, p5}, Lcom/singleblur/blur/STBlurPreview;->initRender(II)I

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur initRender failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 298
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mRenderInit:Z

    :cond_2
    const/4 p1, 0x1

    new-array p5, p1, [I

    aput p4, p5, v0

    if-eqz p3, :cond_6

    if-eq p3, p1, :cond_3

    goto :goto_4

    .line 321
    :cond_3
    iget-object p3, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p4, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    iget-object p6, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    .line 322
    invoke-static {p6}, Lcom/transsion/algorithm/STBlurClient;->access$200(Lcom/transsion/algorithm/STBlurClient;)Z

    move-result p6

    if-eqz p6, :cond_5

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClient;->access$300(Lcom/transsion/algorithm/STBlurClient;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v0

    goto :goto_1

    :cond_5
    :goto_0
    move p0, p1

    .line 321
    :goto_1
    invoke-virtual {p3, p2, p4, p5, p0}, Lcom/singleblur/blur/STBlurPreview;->processTextureGradual(I[F[IZ)I

    move-result p0

    if-eqz p0, :cond_9

    .line 324
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur process2DTexture failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 305
    :cond_6
    iget-object p3, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p4, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    iget-object p6, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    .line 306
    invoke-static {p6}, Lcom/transsion/algorithm/STBlurClient;->access$200(Lcom/transsion/algorithm/STBlurClient;)Z

    move-result p6

    if-eqz p6, :cond_8

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClient;->access$300(Lcom/transsion/algorithm/STBlurClient;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move p0, v0

    goto :goto_3

    :cond_8
    :goto_2
    move p0, p1

    .line 305
    :goto_3
    invoke-virtual {p3, p2, p4, p5, p0}, Lcom/singleblur/blur/STBlurPreview;->processOESTextureGradual(I[F[IZ)I

    move-result p0

    if-eqz p0, :cond_9

    .line 308
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "STBlur processOESTexture failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_9
    :goto_4
    return p1
.end method

.method public initPreviewBlurGLThread()V
    .locals 4

    .line 264
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initPreviewBlurGLThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/singleblur/blur/STBlurPreview;

    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Lcom/singleblur/blur/STBlurPreview;->setDebug(Z)I

    .line 267
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {v1, v0}, Lcom/singleblur/blur/STBlurPreview;->setDebugMask(Z)I

    .line 268
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/16 v1, 0x1001

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    .line 269
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClient;->access$100(Lcom/transsion/algorithm/STBlurClient;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/singleblur/blur/STBlurPreview;->setFrontCamera(Z)V

    return-void
.end method

.method public initRender()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mRenderInit:Z

    .line 162
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initRender"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initSTBlur()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initSTBlur"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public processPreviewBlur([BIII)V
    .locals 9

    .line 167
    iget v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mProcessFrameNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mProcessFrameNumber:I

    iget v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mProcessFrame:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mYuvData:[B

    const/16 v0, 0x10

    const/16 v1, 0x11

    if-ne p4, v1, :cond_1

    .line 174
    sget-object p4, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    const/16 v0, 0x18

    goto :goto_0

    .line 177
    :cond_1
    sget-object p4, Lcom/singleblur/faceapi/model/CvPixelFormat;->YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

    :goto_0
    if-nez p1, :cond_2

    .line 181
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "processPreviewBlur mYuvData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mReleaseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-nez v1, :cond_3

    .line 187
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "processPreviewBlur mSTBlurPreview is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    monitor-exit p1

    return-void

    .line 190
    :cond_3
    invoke-virtual {v1, p4}, Lcom/singleblur/blur/STBlurPreview;->setFormat(Lcom/singleblur/faceapi/model/CvPixelFormat;)V

    .line 191
    iget-object p4, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {p4, v0}, Lcom/singleblur/blur/STBlurPreview;->setSegmentOption(I)V

    .line 192
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object v2, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mYuvData:[B

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->this$0:Lcom/transsion/algorithm/STBlurClient;

    .line 193
    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClient;->access$100(Lcom/transsion/algorithm/STBlurClient;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v3, p2

    move v4, p3

    .line 192
    invoke-virtual/range {v1 .. v8}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V

    .line 194
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

    .line 274
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "unInitPreviewBlurGLThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/singleblur/blur/STBlurPreview;->destroy()I

    const/4 v1, 0x0

    .line 278
    iput-object v1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    .line 280
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

    .line 155
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "unInitSTBlur"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mProcessFrameNumber:I

    return-void
.end method

.method public updateBlurLevel(I)V
    .locals 3

    .line 199
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBlurLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p1, v0, [F

    .line 202
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_1
    new-array p1, v0, [F

    .line 205
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_2
    new-array p1, v0, [F

    .line 208
    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_3
    new-array p1, v0, [F

    .line 211
    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_4
    new-array p1, v0, [F

    .line 214
    fill-array-data p1, :array_4

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_5
    new-array p1, v0, [F

    .line 217
    fill-array-data p1, :array_5

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_6
    new-array p1, v0, [F

    .line 220
    fill-array-data p1, :array_6

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_7
    new-array p1, v0, [F

    .line 223
    fill-array-data p1, :array_7

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    goto :goto_0

    :pswitch_8
    new-array p1, v0, [F

    .line 226
    fill-array-data p1, :array_8

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->GRADUAL_BLUR_WEIGHT:[F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
    .end array-data

    :array_6
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f4ccccd    # 0.8f
        0x3f400000    # 0.75f
        0x3f333333    # 0.7f
    .end array-data

    :array_7
    .array-data 4
        0x3f333333    # 0.7f
        0x3f266666    # 0.65f
        0x3f19999a    # 0.6f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_8
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f000000    # 0.5f
        0x3ee66666    # 0.45f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public updateKernel(I)V
    .locals 3

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 256
    :goto_0
    :pswitch_2
    invoke-static {}, Lcom/transsion/algorithm/STBlurClient;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKernel,level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-eqz p0, :cond_0

    const/16 p1, 0x1006

    int-to-float v0, v0

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
