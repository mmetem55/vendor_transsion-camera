.class public interface abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfiguratorManager;
.super Ljava/lang/Object;
.source "IConfiguratorManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;",
        "C::",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator<",
        "TF;>;>",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator<",
        "TF;>;"
    }
.end annotation


# virtual methods
.method public entry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    return-void
.end method

.method public abstract updateFlashValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.end method
