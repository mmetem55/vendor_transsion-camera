.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;
.super Ljava/lang/Object;
.source "MovieTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeSection"
.end annotation


# instance fields
.field private final mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

.field private mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

.field private mRecordFileFullPath:Ljava/lang/String;

.field private final mRecordFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;)V
    .locals 1

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$600()Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    .line 373
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "theme_section_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getSectionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    return-object p0
.end method

.method private encodeVideo(I)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->updateVideoEncodeTexture(I)V

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/utils/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_0
    return-void
.end method


# virtual methods
.method clearCacheFile()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/io/File;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 383
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileFullPath:Ljava/lang/String;

    return-void
.end method

.method clearFilterEffect()V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->clearFilterEffect()V

    return-void
.end method

.method draw(IIIIZ)I
    .locals 16

    move-object/from16 v0, p0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 401
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    if-eqz p5, :cond_0

    .line 403
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v7, v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$802(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;J)J

    .line 404
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;J)J

    .line 406
    :cond_0
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J

    move-result-wide v8

    sub-long/2addr v1, v8

    invoke-static {v7, v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1002(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;J)J

    .line 408
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J

    move-result-wide v1

    .line 409
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getDuration()J

    move-result-wide v7

    cmp-long v7, v1, v7

    const/4 v8, 0x0

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    if-eqz v7, :cond_2

    .line 410
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getDuration()J

    move-result-wide v1

    :cond_2
    move-wide v14, v1

    if-eqz v7, :cond_3

    .line 413
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/util/Map;

    move-result-object v1

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 414
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/util/Map;

    move-result-object v2

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v9}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 416
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 417
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getDuration()J

    move-result-wide v11

    mul-long/2addr v11, v5

    cmp-long v1, v11, v9

    if-ltz v1, :cond_3

    .line 422
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v11, v9

    const-wide/16 v3, 0x2

    div-long/2addr v11, v3

    add-long v3, v1, v11

    .line 426
    :cond_3
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$908(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J

    .line 427
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-interface/range {v9 .. v15}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->render(IIIIJ)I

    move-result v1

    move/from16 v2, p1

    move/from16 v3, p2

    .line 430
    invoke-static {v8, v8, v3, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 431
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    if-nez v1, :cond_4

    .line 434
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v9

    move/from16 v10, p4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-interface/range {v9 .. v14}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->drawTexture(IIIII)V

    move/from16 v1, p4

    .line 435
    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->encodeVideo(I)V

    goto :goto_1

    :cond_4
    const/4 v4, -0x4

    if-ne v1, v4, :cond_5

    .line 437
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v9

    move/from16 v10, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-interface/range {v9 .. v14}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->drawTexture(IIIII)V

    move/from16 v1, p3

    .line 438
    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->encodeVideo(I)V

    goto :goto_1

    .line 440
    :cond_5
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw failed mThemeCurrentSection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " result:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    if-eqz v7, :cond_6

    const/4 v8, -0x3

    :cond_6
    return v8
.end method

.method getDuration()J
    .locals 2

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getRecordFilePath()Ljava/lang/String;
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileFullPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/io/File;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileFullPath:Ljava/lang/String;

    .line 396
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mRecordFileFullPath:Ljava/lang/String;

    return-object p0
.end method

.method installFilterEffect()V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getFilterInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->installEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->clearFilterEffect()V

    .line 459
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    .line 460
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installFilterEffect for theme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " result:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method updateFilterEffect(II)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->mFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->updateFilterEffect(II)V

    return-void
.end method
