.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.super Ljava/lang/Object;
.source "BaseFlashFeature.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;


# static fields
.field private static final FEATURE_SUPPORT_VALUE_SIZE:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field protected final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field protected final mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 49
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-void
.end method


# virtual methods
.method public capturing()Z
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->capturing()Z

    move-result p0

    return p0
.end method

.method protected abstract createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
            "+",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
            ">;>;"
        }
    .end annotation
.end method

.method protected currentCameraId()Ljava/lang/String;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->currentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public facingFront()Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    return p0
.end method

.method public featureSupport()Z
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public forceLowLight()Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->forceLowLight()Z

    move-result p0

    return p0
.end method

.method public forceLowLightState()Z
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->forceLowLightState()Z

    move-result p0

    return p0
.end method

.method public getBrightnessCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$BrightnessCallback;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getCaptureStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getRecordStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 0

    return-void
.end method

.method public isAeLockTriggered()Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isAeLockTriggered()Z

    move-result p0

    return p0
.end method

.method public isBackWideUnSupport()Z
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isBackWideUnSupport()Z

    move-result p0

    return p0
.end method

.method public isFrontCameraUnSupport()Z
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isFrontCameraUnSupportSFL()Z

    move-result p0

    return p0
.end method

.method public isMainCameraBack()Z
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isMainCameraBack()Z

    move-result p0

    return p0
.end method

.method public lowLight()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowLight()Z

    move-result p0

    return p0
.end method

.method public onFeatureLoad()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    .line 56
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->initConfigurators()V

    return-void
.end method

.method public onModeClose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->pause()V

    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public recording()Z
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->recording()Z

    move-result p0

    return p0
.end method

.method public restoreToDefault()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->updateFlashValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
