.class public interface abstract Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;
.super Ljava/lang/Object;
.source "IFlashValue.java"


# virtual methods
.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract supportedFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z
.end method
