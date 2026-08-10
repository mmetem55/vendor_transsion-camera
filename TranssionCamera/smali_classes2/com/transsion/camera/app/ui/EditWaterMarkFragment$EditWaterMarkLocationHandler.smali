.class Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;
.super Landroid/os/Handler;
.source "EditWaterMarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/EditWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkLocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 793
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;)V
    .locals 0

    .line 790
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 798
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$700(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 805
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
