.class Lcom/transsion/camera/feature/setting/makeup/MuStereoParam$1;
.super Ljava/lang/Object;
.source "MuStereoParam.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->refreshToUI(I)V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->access$000(Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;)Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateWarningTypeAndSendRequest(I)V

    return-void
.end method
