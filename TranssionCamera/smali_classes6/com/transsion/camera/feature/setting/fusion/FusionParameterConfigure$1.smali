.class Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;
.super Ljava/lang/Object;
.source "FusionParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 99
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 100
    aget p1, p1, v0

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->access$002(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;I)I

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->access$102(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;Z)Z

    :cond_1
    return-void
.end method
