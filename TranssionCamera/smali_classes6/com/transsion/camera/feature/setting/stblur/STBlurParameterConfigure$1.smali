.class Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;
.super Ljava/lang/Object;
.source "STBlurParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)Lcom/transsion/camera/feature/setting/stblur/STBlur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->setBWConvertValue(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)Lcom/transsion/camera/feature/setting/stblur/STBlur;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)Lcom/transsion/camera/feature/setting/stblur/STBlur;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
