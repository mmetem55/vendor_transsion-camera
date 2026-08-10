.class Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;
.super Ljava/lang/Object;
.source "SupportedValuesBuilder.java"


# instance fields
.field private final mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

.field private final mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;->mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    return-void
.end method


# virtual methods
.method build()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->supportedFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 38
    invoke-interface {v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->featureSupport()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->put(Ljava/lang/String;Z)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->mFlashFacadeValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;->mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;->getFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v4, v0}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method
