.class Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;
.super Ljava/lang/Object;
.source "FeatureValueUpdater.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    return-void
.end method

.method private sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->command()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendCommandChangeRequest()V

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSync()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configAll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequest()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configSelf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSelf()V

    .line 80
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->recycle()V

    return-void
.end method


# virtual methods
.method brightnessDetected(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->brightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method captureStart()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->captureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method nextCaptureReady()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->nextCaptureReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method recordEnd()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->recordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method recordStart()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->recordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    :cond_0
    return-void
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method

.method updateLuminanceValue(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->mFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->sendRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V

    return-void
.end method
