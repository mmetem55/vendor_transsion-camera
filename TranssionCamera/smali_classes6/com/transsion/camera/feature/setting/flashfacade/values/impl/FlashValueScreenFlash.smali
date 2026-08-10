.class public Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueScreenFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;
.source "FlashValueScreenFlash.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-void
.end method


# virtual methods
.method protected initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupportedFeatures:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z
    .locals 1

    const-string v0, "key_flash"

    .line 44
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z

    move-result p0

    return p0
.end method
