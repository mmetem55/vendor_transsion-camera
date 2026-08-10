.class Lcom/transsion/camera/app/ArCoreMainActivity$6;
.super Ljava/lang/Object;
.source "ArCoreMainActivity.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraError()V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ArCoreMainActivity$6$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$6$1;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
