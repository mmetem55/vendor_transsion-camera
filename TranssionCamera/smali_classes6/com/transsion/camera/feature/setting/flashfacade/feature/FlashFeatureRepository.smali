.class public final Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;
.super Ljava/lang/Object;
.source "FlashFeatureRepository.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeaturesByType:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeaturesByType:Lcom/google/common/collect/Multimap;

    .line 52
    new-instance p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onFeatureLoad()V

    const-string v2, "key_flash"

    .line 54
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    new-instance p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onFeatureLoad()V

    const-string v2, "key_ring_screen_light"

    .line 59
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    new-instance p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onFeatureLoad()V

    const-string v2, "key_screen_flash"

    .line 64
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    new-instance p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onFeatureLoad()V

    const-string p1, "key_super_flash"

    .line 69
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public brightnessDetected(Ljava/util/List;Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;Z)",
            "Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;"
        }
    .end annotation

    .line 272
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 274
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getBrightnessCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$BrightnessCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$BrightnessCallback;->onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public captureStart(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)",
            "Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;"
        }
    .end annotation

    .line 228
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 230
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getCaptureStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;->onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public configParameters(Ljava/util/List;Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;",
            "Lcom/transsion/camera/adapter/CameraParameters;",
            ")I"
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 179
    invoke-interface {v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    sget-object v2, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParameters, need restartPreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    or-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 78
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->featureSupport()Z

    move-result p0

    return p0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-nez p0, :cond_0

    const-string p0, "off"

    return-object p0

    .line 86
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public featuresByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository$1;->$SwitchMap$com$transsion$camera$app$common$setting$ICameraSetting$SettingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeaturesByType:Lcom/google/common/collect/Multimap;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeaturesByType:Lcom/google/common/collect/Multimap;

    sget-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeaturesByType:Lcom/google/common/collect/Multimap;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeaturesByType:Lcom/google/common/collect/Multimap;

    sget-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeaturesByType:Lcom/google/common/collect/Multimap;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public nextCaptureReady(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)",
            "Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;"
        }
    .end annotation

    .line 239
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 241
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getCaptureStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;->onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public onModeClose(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->onModeClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pause(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->pause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public previewStarted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 191
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getPreviewStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;->onPreviewStarted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public previewStopped(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 200
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getPreviewStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;->onPreviewStopped()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recordEnd(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)",
            "Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;"
        }
    .end annotation

    .line 261
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 263
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getRecordStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;->onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public recordStart(Ljava/util/List;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)",
            "Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;"
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 252
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getRecordStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;->onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public restoreToDefault()V
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->restoreToDefault()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->resume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCameraCapabilities(Ljava/util/List;Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;",
            "Lcom/transsion/camera/adapter/ICameraCapabilities;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->unInit()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateFacadeValue(Ljava/util/List;Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
            ">;",
            "Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;",
            ")",
            "Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;"
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    if-eqz p2, :cond_0

    .line 211
    invoke-interface {v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 2

    .line 283
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    const-string v1, "key_flash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    if-nez p0, :cond_0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-object v0
.end method

.method public updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 2

    .line 218
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->mFeatures:Ljava/util/Map;

    const-string v1, "key_flash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    if-nez p0, :cond_0

    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-object v0
.end method
