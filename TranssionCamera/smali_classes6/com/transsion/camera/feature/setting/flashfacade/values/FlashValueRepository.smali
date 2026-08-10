.class public final Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;
.super Ljava/lang/Object;
.source "FlashValueRepository.java"


# instance fields
.field private final mValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;->mValueMap:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    .line 27
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->mFlashFacadeValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;->mValueMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->getValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;->mValueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;

    return-object p0
.end method
