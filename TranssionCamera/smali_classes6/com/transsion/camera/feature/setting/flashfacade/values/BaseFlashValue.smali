.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;
.super Ljava/lang/Object;
.source "BaseFlashValue.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;


# instance fields
.field private final mSupportedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mValue:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mSupportedFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;
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
.end method

.method public supportedFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mSupportedFeatures:Ljava/util/List;

    return-object p0
.end method

.method public valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z
    .locals 2

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "key_super_flash"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
