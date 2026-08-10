.class Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;
.super Ljava/lang/Object;
.source "LuminanceAdjustUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustBarValueChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$1;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$200(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    return-void
.end method

.method public onActionUp()V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method public onProgressValueChange(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceValue(I)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateVibrate(I)V

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$300(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;I)V

    return-void
.end method
