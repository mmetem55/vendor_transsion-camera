.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;
.super Ljava/lang/Object;
.source "BaseConfiguratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
        "C:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "TF;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-void
.end method


# virtual methods
.method protected abstract getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method
