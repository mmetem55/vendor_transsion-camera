.class public Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;
.super Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.source "MakeUpAlgorithm.java"


# instance fields
.field private final mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

.field private final mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

.field private volatile mIsContrast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 23
    new-instance p2, Lcom/bytedance/labcv/core/util/ImageUtil;

    invoke-direct {p2}, Lcom/bytedance/labcv/core/util/ImageUtil;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    .line 28
    new-instance p2, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mParameter:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 57
    iget-boolean v3, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mIsContrast:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 58
    iput-boolean v4, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return v4

    :cond_0
    move/from16 v3, p3

    .line 62
    iput v3, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    move/from16 v5, p4

    .line 63
    iput v5, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    .line 65
    iget v6, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v4

    .line 66
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->screenPocket()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v7, v6

    move/from16 v6, p8

    .line 73
    :goto_1
    iget v8, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    rem-int/lit16 v8, v8, 0xb4

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_3

    move/from16 v18, v5

    move v5, v3

    move/from16 v3, v18

    .line 77
    :cond_3
    new-instance v8, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    invoke-direct {v8}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;-><init>()V

    iget v9, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->rotate(F)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->flip(ZZ)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    move-result-object v7

    .line 79
    iget v8, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    if-nez v8, :cond_4

    .line 80
    iget-object v10, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v11, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    sget-object v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texture_Oes:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    sget-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    move v14, v3

    move v15, v5

    move-object/from16 v16, v7

    invoke-virtual/range {v10 .. v16}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToTexture(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I

    move-result v1

    move v9, v1

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    if-gtz v9, :cond_5

    return v4

    .line 87
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->setCameraPosition(Z)V

    .line 88
    iget-object v1, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v6, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    iget v8, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    invoke-virtual {v1, v6, v8}, Lcom/bytedance/labcv/core/util/ImageUtil;->prepareTexture(II)I

    move-result v1

    .line 89
    iget-object v8, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    iget v11, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    iget v12, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    move v10, v1

    move-wide/from16 v13, p6

    invoke-virtual/range {v8 .. v14}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->process(IIIIJ)Z

    move-result v6

    .line 91
    iget-object v10, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v12, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    sget-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    invoke-virtual {v7}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->reverse()Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    move-result-object v17

    move v11, v1

    move-object v13, v14

    move v15, v5

    move/from16 v16, v3

    invoke-virtual/range {v10 .. v17}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToTexture(IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)Z

    .line 92
    iput-boolean v4, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return v6
.end method

.method public getDefaultParameter()Ljava/lang/String;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->screenPocket()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_makeup_feature"

    return-object p0
.end method

.method handleMakeUpAlgorithm(Ljava/lang/String;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMakeUpAlgorithm,value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 169
    iget v2, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 171
    iget-boolean v0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mIsContrast:Z

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsContrast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mIsContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    if-eqz v0, :cond_2

    .line 174
    new-instance v1, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;-><init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 183
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    goto :goto_0

    .line 186
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public init(II)Z
    .locals 1

    .line 45
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->init()Z

    move-result p1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init, result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    const-string p1, "key_restore_settings_notify_ui"

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onModeUnInit()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeUnInit()V

    const-string v0, "key_restore_settings_notify_ui"

    .line 40
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p2}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->handleMakeUpAlgorithm(Ljava/lang/String;)V

    :cond_0
    const-string v0, "key_restore_settings_notify_ui"

    .line 149
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "end"

    .line 150
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    if-eqz p1, :cond_1

    .line 152
    new-instance p2, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;-><init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingReady()V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->handleMakeUpAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter + parameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->cleanPipeline()V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->setComposeNodes([Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    array-length v1, v0

    if-ge v3, v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    iget-object v2, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    aget v4, v4, v3

    invoke-virtual {v1, v2, v0, v4}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->updateComposerNodeIntensity(Ljava/lang/String;Ljava/lang/String;F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setParameter -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    invoke-virtual {v0}, Lcom/bytedance/labcv/core/util/ImageUtil;->release()V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->destroy()V

    const/16 v0, 0xcf5

    const/4 v1, 0x4

    .line 101
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
