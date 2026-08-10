.class public Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;
.super Ljava/lang/Object;
.source "MakeUpHelper.java"


# static fields
.field private static final FACING_BACK:Ljava/lang/String; = "back"

.field private static final FACING_FRONT:Ljava/lang/String; = "front"

.field public static final MAKE_UP_DEFAULT_INTENSITY:Ljava/lang/String; = "60"


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private final mSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$_kCKW1GDuFQsutUSLCnI8VQqiXA(Ljava/lang/String;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->lambda$updateIntensity$1(Ljava/lang/String;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e0W6NQLpCVmOx2DdAAgr4cCNy5g(Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->lambda$restoreIntensity$3(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fWwd4FkfZQGZiKdsXONwFH-Ntr8(ILcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->lambda$updateIntensity$2(ILcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sUcPEurTMEcQJ6hXM46v1Rs7xqM(Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->lambda$initItemsIntensity$0(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 40
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->initItemsIntensity()V

    return-void
.end method

.method private getCameraFacing()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "back"

    goto :goto_0

    :cond_0
    const-string p0, "front"

    :goto_0
    return-object p0
.end method

.method private getIntensityStoreKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initItemsIntensity()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;)V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$initItemsIntensity$0(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 3

    .line 48
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 53
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 54
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensityStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {v2, v0, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 56
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->currentIntensity(I)V

    return-void
.end method

.method private synthetic lambda$restoreIntensity$3(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "60"

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->currentIntensity(I)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensityStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 105
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateIntensity$1(Ljava/lang/String;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)Z
    .locals 0

    .line 85
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateIntensity$2(ILcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    .line 91
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->currentIntensity(I)V

    return-void
.end method


# virtual methods
.method public allDefaultIntensity()Z
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 71
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public getIntensity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 76
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensityStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public restoreIntensity()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;)V

    .line 96
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateIntensity(Ljava/lang/String;I)V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensityStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 91
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
