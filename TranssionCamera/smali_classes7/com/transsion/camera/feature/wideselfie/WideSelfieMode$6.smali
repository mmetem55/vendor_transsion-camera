.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;
.super Ljava/lang/Object;
.source "WideSelfieMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldExchangeDirection()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    .line 211
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_0

    return v1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    .line 215
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public onDirectionUpdate(I)V
    .locals 3

    .line 199
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->shouldExchangeDirection()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    move p1, v2

    .line 206
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onDirectionUpdate(I)V

    return-void
.end method
