.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "STBlurMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "STBlurPreviewCallback"
.end annotation


# instance fields
.field private m2DTextureId:I

.field private mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mInitState:Z

.field private mModeResumed:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    const/4 p1, -0x1

    .line 440
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 p1, 0x0

    .line 443
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 444
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void
.end method

.method private create2DProgram()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_0
    return-void
.end method

.method private create2DTexture(II)V
    .locals 3

    .line 447
    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 449
    iput p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    .line 450
    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->initTextureId(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    .line 451
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DTexture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private destory2DProgram()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_0
    return-void
.end method

.method private destroy2DTexture()V
    .locals 5

    .line 456
    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 457
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 458
    iput v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    .line 459
    iput v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 460
    iput v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 8

    .line 528
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->create2DTexture(II)V

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I

    move-result v7

    move v3, p2

    move v5, p4

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->process(IIIII)Z

    move-result v0

    .line 533
    invoke-static {v1, v1, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v2, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1602(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Z)Z

    .line 539
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 543
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mInitState:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 544
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mInitState:Z

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initPreviewBlurGLThread()V

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v2

    if-eqz v0, :cond_3

    iget p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    :cond_3
    move v4, p2

    move-object v3, p1

    move v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    goto :goto_2

    .line 540
    :cond_4
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "draw mSTBlurClient: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    .line 541
    invoke-static {p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", mSTBlurClientValid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 540
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 552
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    :cond_5
    or-int p0, v1, v0

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 518
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public modeInitCallback()V
    .locals 2

    .line 479
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeInitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->create2DProgram()V

    return-void
.end method

.method public modePauseCallback()V
    .locals 3

    .line 575
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modePauseCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    .line 577
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 578
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "modePauseCallback mSTBlurClient is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 581
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mInitState:Z

    if-eqz v1, :cond_1

    .line 582
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mInitState:Z

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->unInitPreviewBlurGLThread()V

    :cond_1
    return-void
.end method

.method public modeResumeCallback()V
    .locals 3

    .line 560
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeResumeCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    .line 562
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mInitState:Z

    if-nez v1, :cond_1

    .line 568
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mInitState:Z

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initPreviewBlurGLThread()V

    :cond_1
    return-void

    .line 563
    :cond_2
    :goto_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeResumeCallback mSTBlurClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    .line 564
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSTBlurClientValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 563
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public modeUninitCallback()V
    .locals 3

    .line 485
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeUninitCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destory2DProgram()V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1400(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    .line 488
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destroy2DTexture()V

    return-void
.end method

.method public surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 500
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChangedCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    iget p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    if-eq v0, p3, :cond_1

    .line 502
    :cond_0
    iput p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 503
    iput p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    .line 504
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->updateTextureId(III)I

    :cond_1
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 493
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreatedCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->create2DProgram()V

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 510
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destory2DProgram()V

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1400(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destroy2DTexture()V

    return-void
.end method
