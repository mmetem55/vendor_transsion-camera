.class Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;
.super Ljava/lang/Object;
.source "FrontDualFlashAdjustUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTempChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$300(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    return-void
.end method

.method public onActionUp()V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$400(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    return-void
.end method

.method public onColorTempChanged(I)V
    .locals 3

    .line 217
    invoke-static {}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorTempChanged, colorTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$700(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V

    return-void
.end method
