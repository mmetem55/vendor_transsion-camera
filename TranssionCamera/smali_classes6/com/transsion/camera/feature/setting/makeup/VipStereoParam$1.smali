.class Lcom/transsion/camera/feature/setting/makeup/VipStereoParam$1;
.super Ljava/lang/Object;
.source "VipStereoParam.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;->refreshToUI(I)V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;->access$000(Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;)Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateWarningTypeAndSendRequest(I)V

    return-void
.end method
