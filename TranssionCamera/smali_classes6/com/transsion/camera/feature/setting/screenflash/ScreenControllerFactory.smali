.class Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerFactory;
.super Ljava/lang/Object;
.source "ScreenControllerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getScreenController()Lcom/transsion/camera/feature/setting/screenflash/IScreenController;
    .locals 1

    .line 20
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;-><init>()V

    return-object v0
.end method
