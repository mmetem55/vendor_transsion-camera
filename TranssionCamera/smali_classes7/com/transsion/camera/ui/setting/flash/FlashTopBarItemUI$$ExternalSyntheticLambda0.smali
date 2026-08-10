.class public final synthetic Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field public final synthetic f$2:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method


# virtual methods
.method public final onBatteryStatusChanged(ZII)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/app/common/setting/ISetting;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->$r8$lambda$bSh8jdtxodSwPWhGFBWB-dB3L-A(Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V

    return-void
.end method
