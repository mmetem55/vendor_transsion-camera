.class Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;
.super Ljava/lang/Object;
.source "MuMonomerParam.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->access$000(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;I)V

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->access$100(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;)Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->access$100(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;)Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->updateWarningType(I)V

    :cond_0
    return-void
.end method
