.class Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;
.super Ljava/lang/Object;
.source "AsdParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$200(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/Asd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getFakeCameraSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$200(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/Asd;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->onFakeCameraStatusChanged(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$300(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 319
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$302(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)I

    :cond_1
    return-void
.end method
